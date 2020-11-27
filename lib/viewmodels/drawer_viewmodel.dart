import 'package:couchbase_lite_dart/couchbase_lite_dart.dart';
import 'package:flipper/domain/redux/app_state.dart';
import 'package:flipper/locator.dart';
import 'package:flipper/model/branch.dart';
import 'package:flipper/model/business.dart';
import 'package:flipper/model/fuser.dart';
import 'package:flipper/services/proxy.dart';
import 'package:flipper/services/shared_state_service.dart';
import 'package:flipper/utils/constant.dart';
import 'package:flipper/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:redux/redux.dart';
import 'package:stacked/stacked.dart';

class DrawerViewModel extends ReactiveViewModel {
  final _sharedStateService = locator<SharedStateService>();

  FUser get user => _sharedStateService.user;
  Business get business => _sharedStateService.business;

  final List<Branch> _branches = <Branch>[];

  List<Branch> get branches => _branches;

  final List<Business> _businesses = <Business>[];

  List<Business> get businesses => _businesses;

  Future getBranches() async {
    final q = Query(ProxyService.database.db, 'SELECT * WHERE table=\$VALUE');

    q.parameters = {'VALUE': AppTables.branch};

    q.addChangeListener((List results) {
      for (Map map in results) {
        map.forEach((key, value) {
          if (!_branches.contains(Branch.fromMap(value))) {
            _branches.add(Branch.fromMap(value));
            notifyListeners();
          }
        });
      }
    });
  }

  Future getBusiness() async {
    assert(user.id != null);

    final Logger log = Logging.getLogger('get business:');

    // log.d(user.id);
    final q = Query(ProxyService.database.db,
        'SELECT * WHERE table=\$VALUE AND userId=\$USERID');

    q.parameters = {'VALUE': AppTables.business, 'USERID': user.id};

    q.addChangeListener((List results) {
      for (Map map in results) {
        map.forEach((key, value) {
          if (!_businesses.contains(Business.fromMap(value))) {
            if (Business.fromMap(value).active) {
              _sharedStateService.setBusiness(
                  business: Business.fromMap(value));
            }
            _businesses.add(Business.fromMap(value));
            notifyListeners();
          }
        });
      }
    });

    //NOTE: in case a listner is not registered because the query has no change!
    final results = q.execute();
    if (results.isNotEmpty) {
      for (Map map in results) {
        map.forEach((key, value) {
          if (!businesses.contains(Business.fromMap(value))) {
            businesses.add(Business.fromMap(value));
          }
        });
      }
    }
  }

  Future<void> desktopLogin({BuildContext context, String code}) async {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    await http.post('https://flipper.rw/api/ws', body: {
      'code': code,
      'token': store.state.user.token
    }, headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
      'Authorization': 'Bearer  ${store.state.user.token}',
    });
  }

  Future<void> scanQR(BuildContext context) async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    await desktopLogin(context: context, code: barcodeScanRes);
  }

  Future<void> loginWithQr({BuildContext context}) async {
    setBusy(true);

    await scanQR(context);

    setBusy(false);
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_sharedStateService];

  Future<void> switchBusiness(
      {@required Business from, @required Business to}) async {
    final Logger log = Logging.getLogger('Switch business:');

    final Document fromBusiness = ProxyService.database.getById(id: from.id);

    log.d(from.id);

    // fromBusiness.properties['active'] = false;
    // ProxyService.database.update(document: fromBusiness);

    // final Document toBusiness =  ProxyService.database.getById(id: to.id);
    // fromBusiness.properties['active'] = false;
    // final k =  ProxyService.database.update(document: toBusiness);

    // _sharedStateService.setBusiness(business: Business.fromMap(k.jsonProperties));

    // notifyListeners();
  }
}
