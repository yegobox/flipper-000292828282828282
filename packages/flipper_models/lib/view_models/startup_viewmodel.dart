import 'package:flipper_models/models/business.dart';
import 'package:flipper_services/proxy.dart';
import 'package:stacked/stacked.dart';
// import 'package:get_storage/get_storage.dart';

class StartUpViewModel extends BaseViewModel {
  bool didSync = false;
  Future<bool> didWeSync() async {
    setBusy(true);
    if (isLoggedIn()) {
      List<Business> response = await ProxyService.api.canStart();
      //TODO: save the response in local db for easy access in menu drawer.
      //use Moor that imprement DB interface.
      //Lite also implement DB interface which mainly do crud operations
      //get method should always return Observable.
      //also remember to dispose this observable or stream depend on what we will choose
      didSync = response.isEmpty ? false : true;
      didSync;
    } else {
      didSync = false;
    }
    setBusy(false);

    notifyListeners();
    return didSync;
  }

  bool isLoggedIn() {
    return ProxyService.box.read(key: 'userId') == null ? false : true;
  }
}
