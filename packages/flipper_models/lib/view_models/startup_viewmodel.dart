import 'package:flipper_models/models/business.dart';
import 'package:flipper_services/proxy.dart';
import 'package:stacked/stacked.dart';
import 'package:get_storage/get_storage.dart';

class StartUpViewModel extends BaseViewModel {
  final box = GetStorage();
  bool didSync = false;
  Future<bool> didWeSync() async {
    setBusy(true);
    if (isLoggedIn()) {
      List<Business> response = await ProxyService.api.canStart();
      didSync = response.isEmpty ? false : true;
      didSync;
    } else {
      didSync = false;
    }
    setBusy(false);
    didSync =
        false; //FIXME: delete this after testing if the app can redirect to signup form should be tested by uni testing
    notifyListeners();
    return didSync;
  }

  bool isLoggedIn() {
    return box.read('userId') == null ? false : true;
  }
}
