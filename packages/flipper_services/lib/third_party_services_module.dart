import 'package:injectable/injectable.dart';

import 'abstractions/api.dart';
import 'fake_api.dart';
import 'http_api.dart';

enum ApiProvider {
  Fake,
  Rest,
  Lite,
}

@module
abstract class ThirdPartyServicesModule {
  @lazySingleton
  Api get apiService {
    Api apiService;
    var choosenProvider =
        ApiProvider.Rest; // change this to change the provider
    switch (choosenProvider) {
      case ApiProvider.Fake:
        apiService = FakeApi();
        break;
      case ApiProvider.Rest:
        apiService = HttpApi();
        break;
      default:
        apiService = HttpApi();
    }
    return apiService;
  }
}
