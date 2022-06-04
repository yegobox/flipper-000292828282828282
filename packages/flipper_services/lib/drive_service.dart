import 'dart:convert';
import 'dart:io';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_services/secure_storage.dart';
import 'package:googleapis/drive/v3.dart' as ga;
import 'package:flipper_models/isar_models.dart';
import 'package:googleapis_auth/src/auth_client.dart';
// import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:path/path.dart' as path;
// import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
// import 'package:path/path.dart';
// import 'dart:io';
import 'package:path_provider/path_provider.dart';
// import 'package:path';
import 'package:flipper_routing/routes.logger.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'extension_google_sign_in_as_googleapis_auth.dart';

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
  Future<http.Client?> silentLogin() async {
    final _googleSignIn = GoogleSignIn(scopes: _scopes);

    if (ProxyService.box.hasSignedInForAutoBackup()) {
      await _googleSignIn.signInSilently();
    } else {
      GoogleSignInAccount? auth = await _googleSignIn.signIn();
      if (auth != null) {
        ProxyService.box.write(key: 'hasSignedInForAutoBackup', value: true);
      } else {
        return null;
      }
    }
    // TODOwe can silently refresh the token if we know it has expired, but we have no way to know
    //therefore the above code is used as it will prompt the user for authentication as  _googleSignIn.authenticatedClient() will be null
    // await _googleSignIn.signInSilently();
    // New refreshed token
    AuthClient httpClient = (await _googleSignIn.authenticatedClient())!;
    //Save Credentials
    // log.i(httpClient.credentials.accessToken);
    log.i(httpClient.credentials.refreshToken);
    // TODOlearn if the refresher token is given.
    log.i(httpClient.credentials.accessToken);

    await storage.saveCredentials(httpClient.credentials.accessToken,
        httpClient.credentials.refreshToken ?? '');
    return httpClient;
  }

  /// Get Authenticated Http Client
  /// the method will check if the token is expired or not
  /// if it is expired it will call refreshToken()
  /// if is the first time it will call the authentication with normal prompt flow
  /// if the token is not expired it will return the http client
  Future<void> backUpNow() async {
    Directory dir = await getApplicationDocumentsDirectory();
    File file = File(path.context.canonicalize(dir.path + '/db/isar/mdbx.dat'));
    await upload(file);
  }

  Future<void> updateBusiness(Business business) async {
    business.backUpEnabled = true;
    business.lastDbBackup = DateTime.now().toIso8601String();
    log.i(business.toJson());

    /// notify the online that user has enabled the backup
    /// also update the property locally.
    await ProxyService.isarApi.update(data: business);
  }

  /// Upload File to user's Google Drive appData folder
  /// https://developers.google.com/drive/api/v3/appdata
  /// before that we first silently authenticate the user
  /// because the first login will prompt the user to login
  /// and the second login will not prompt the user to login
  Future upload(File file) async {
    // download files first before uploading
    await downloadGoogleDriveFile('mdbx.dat.1', ProxyService.box.gdID());
    // end of download
    var client = await silentLogin();
    if (client == null) return;
    var drive = ga.DriveApi(client);
    ga.File fileToUpload = ga.File();
    // https://ko.stackfinder.net/questions/68955545/flutter-how-to-backup-user-data-on-google-drive-like-whatsapp-does
    // https://developers.google.com/drive/api/v3/appdata
    fileToUpload.parents = ["appDataFolder"];
    // fileToUpload.name = basename(file.absolute.path);
    fileToUpload.name = "flipper";
    // log.w("Uploading file");

    var response = await drive.files.create(
      fileToUpload,
      uploadMedia: ga.Media(
        file.openRead(),
        file.lengthSync(),
      ),
    );

    // log.w("Result ${response.toJson()}");
    FileUploaded fileUploaded = FileUploaded.fromJson(response.toJson());
    //patch a business with lst backup fileId.
    Business? business = await ProxyService.isarApi.getBusiness();
    business!.backupFileId = fileUploaded.id;
    await ProxyService.isarApi.update(data: business);
    ProxyService.isarApi.update(data: business);
    ProxyService.box.write(key: 'gdID', value: fileUploaded.id);
    log.i("File uploaded");
  }

  // https://stackoverflow.com/questions/68955545/flutter-how-to-backup-user-data-on-google-drive-like-whatsapp-does
  Future<void> downloadGoogleDriveFile(String fName, String? gdID) async {
    if (gdID == null) return;
    var client = await silentLogin();
    if (client == null) return;
    var drive = ga.DriveApi(client);

    ga.Media file = (await drive.files
        .get(gdID, downloadOptions: ga.DownloadOptions.fullMedia)) as ga.Media;

    final dir = await getApplicationDocumentsDirectory();

    final saveFile = File(dir.path + '/db/isar/$fName');

    List<int> dataStore = [];

    file.stream.listen((data) {
      // log.w("DataReceived: ${data.length}");
      dataStore.insertAll(dataStore.length, data);
    }, onDone: () async {
      // log.w("Task Done");
      File file = await saveFile.writeAsBytes(dataStore);
      Future.delayed(const Duration(minutes: 3), () {
        // log.w("File saved at ${saveFile.path}");
        changeFileNameOnlySync(file, 'mdbx.dat');
        log.i("now renaming");
      });
    }, onError: (error) {
      log.e("Some Error");
    });
  }

  File changeFileNameOnlySync(File file, String newFileName) {
    var path = file.path;
    var lastSeparator = path.lastIndexOf(Platform.pathSeparator);
    var newPath = path.substring(0, lastSeparator + 1) + newFileName;
    return file.renameSync(newPath);
  }
}
