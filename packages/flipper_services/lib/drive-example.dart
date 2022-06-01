//TODOkeep track of the original code: https://stackoverflow.com/questions/65784077/how-do-i-upload-a-file-to-google-drive-using-flutter
import 'dart:convert';
import 'dart:io';
import 'package:flipper_services/proxy.dart';
// import 'package:flipper_services/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:googleapis/drive/v3.dart' as ga;
import 'package:flipper_models/isar_models.dart';
// import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:path/path.dart' as path;
// import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
// import 'package:path/path.dart';
// import 'dart:io';
import 'package:path_provider/path_provider.dart';
// import 'package:path';
import 'package:flipper_routing/routes.logger.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
// import 'package:googleapis_auth/auth_browser.dart';

FileUploaded fileUploadedFromJson(String str) =>
    FileUploaded.fromJson(json.decode(str));

String fileUploadedToJson(FileUploaded data) => json.encode(data.toJson());

class FileUploaded {
  FileUploaded({
    required this.id,
    required this.kind,
    required this.mimeType,
    required this.name,
  });

  String id;
  String kind;
  String mimeType;
  String name;

  factory FileUploaded.fromJson(Map<String, dynamic> json) => FileUploaded(
        id: json["id"],
        kind: json["kind"],
        mimeType: json["mimeType"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kind": kind,
        "mimeType": mimeType,
        "name": name,
      };
}

// const _clientId = "";
// const _clientSecret = "";
// DriveScopes.DRIVE_METADATA_READONLY
// https://developers.google.com/drive/api/v2/about-auth
// https://developers.google.com/drive/api/v2/appdata
final _scopes = [
  ga.DriveApi.driveFileScope,
  ga.DriveApi.driveAppdataScope,
  // ga.DriveApi.driveScope,
  // ga.DriveApi.driveMetadataScope,
];

class SecureStorage {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  //Save Credentials
  Future saveCredentials(AccessToken token, String refreshToken) async {
    print(token.expiry.toIso8601String());
    await storage.write(key: "type", value: token.type);
    await storage.write(key: "data", value: token.data);
    await storage.write(key: "expiry", value: token.expiry.toString());
    await storage.write(key: "refreshToken", value: refreshToken);
  }

  //Get Saved Credentials
  Future<Map<String, dynamic>?> getCredentials() async {
    var result = await storage.readAll();
    if (result.isEmpty) return null;
    return result;
  }

  //Clear Saved Credentials
  Future clear() {
    return storage.deleteAll();
  }
}

class GoogleDrive {
  final storage = SecureStorage();
  final log = getLogger('GoogleDrive');

  /// if the  var credentials = await storage.getCredentials();
  /// has some data i.e we authenticated and we have some token,
  /// the problem is that at the time of using it it might have expired
  /// then we call this method first to refresh the token
  /// for this time we use silent authentication
  /// to avoid user to be prompted for authentication again
  /// because there is known issue https://stackoverflow.com/questions/27890737/firebase-google-auth-offline-access-type-in-order-to-get-a-token-refresh
  /// we silently authenticate and get the token using the silent authentication
  /// for the second time
  Future<http.Client> obtainAuthenticatedClient() async {
    var credentials = await storage.getCredentials();
    if (credentials == null) {
      //Needs user authentication
      var authClient = await clientViaUserConsent(
          ClientId(
              '672237316015-a61ueto4qcl71le6fhecvbvmjmb3jkkt.apps.googleusercontent.com'),
          _scopes, (url) {
        //Open Url in Browser
        launchUrl(Uri.parse(url));
      });
      //Save Credentials
      await storage.saveCredentials(authClient.credentials.accessToken,
          authClient.credentials.refreshToken!);
      return authClient;
    } else {
      print(credentials["expiry"]);
      //Already authenticated
      return authenticatedClient(
          http.Client(),
          AccessCredentials(
              AccessToken(credentials["type"], credentials["data"],
                  DateTime.tryParse(credentials["expiry"])!),
              credentials["refreshToken"],
              _scopes));
    }
  }

  prompt(String url) {
    launchUrl(Uri.parse(url));
  }

  Future<http.Client> silentLogin() async {
    http.Client httpClient = await obtainAuthenticatedClient();
    return httpClient;
  }

  /// Get Authenticated Http Client
  /// the method will check if the token is expired or not
  /// if it is expired it will call refreshToken()
  /// if is the first time it will call the authentication with normal prompt flow
  /// if the token is not expired it will return the http client
  Future<http.Client> backUpNow() async {
    Directory dir = await getApplicationDocumentsDirectory();
    File file = File(path.context.canonicalize(dir.path + '/db/isar'));
    Business? business = await ProxyService.isarApi.getBusiness();
    final httpClient = await silentLogin();
    if (business!.backUpEnabled!) {
      await upload(file);
      await updateBusiness(business);
      return httpClient;
    }
    await upload(file);

    await updateBusiness(business);

    return httpClient;
  }

  Future<void> updateBusiness(Business business) async {
    business.backUpEnabled = true;
    business.lastDbBackup = DateTime.now().toIso8601String();
    log.i(business.toJson());

    /// notify the online that user has enabled the backup
    /// also update the property locally.
    await ProxyService.isarApi.update(data: business);
    ProxyService.isarApi.update(data: business.toJson());
  }

  /// Upload File to user's Google Drive appData folder
  /// https://developers.google.com/drive/api/v3/appdata
  /// before that we first silently authenticate the user
  /// because the first login will prompt the user to login
  /// and the second login will not prompt the user to login
  Future upload(File file) async {
    http.Client client = await silentLogin();
    var drive = ga.DriveApi(client);
    ga.File fileToUpload = ga.File();
    // https://ko.stackfinder.net/questions/68955545/flutter-how-to-backup-user-data-on-google-drive-like-whatsapp-does
    // https://developers.google.com/drive/api/v3/appdata
    fileToUpload.parents = ["appDataFolder"];
    // fileToUpload.name = basename(file.absolute.path);
    fileToUpload.name = "flipper";
    log.w("Uploading file");

    var response = await drive.files.create(
      fileToUpload,
      uploadMedia: ga.Media(
        file.openRead(),
        file.lengthSync(),
      ),
    );

    log.w("Result ${response.toJson()}");
    FileUploaded fileUploaded = FileUploaded.fromJson(response.toJson());
    //patch a business with lst backup fileId.
    Business? business = await ProxyService.isarApi.getBusiness();
    business!.backupFileId = fileUploaded.id;
    await ProxyService.isarApi.update(data: business);
    ProxyService.isarApi.update(data: business);
    // downloadGoogleDriveFile('data', fileUploaded.id);
  }

  // https://stackoverflow.com/questions/68955545/flutter-how-to-backup-user-data-on-google-drive-like-whatsapp-does
  Future<void> downloadGoogleDriveFile(String fName, String gdID) async {
    http.Client client = await silentLogin();

    var drive = ga.DriveApi(client);

    ga.Media file = (await drive.files
        .get(gdID, downloadOptions: ga.DownloadOptions.fullMedia)) as ga.Media;

    final dir = await getApplicationDocumentsDirectory();

    final saveFile = File(dir.path + '/db/$fName');

    List<int> dataStore = [];

    file.stream.listen((data) {
      log.w("DataReceived: ${data.length}");
      dataStore.insertAll(dataStore.length, data);
    }, onDone: () {
      log.w("Task Done");
      saveFile.writeAsBytes(dataStore);
      log.w("File saved at ${saveFile.path}");
    }, onError: (error) {
      log.e("Some Error");
    });
  }
}
