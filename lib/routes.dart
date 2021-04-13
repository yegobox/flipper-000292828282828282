import 'package:flipper_dashboard/flipper_dashboard.dart';
import 'package:flipper_dashboard/startup_view.dart';
import 'package:flipper_login/login_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flipper_services/flipper_firebase_auth.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView),
    CupertinoRoute(page: DashboardView),
    CupertinoRoute(page: LoginView, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    Singleton(classType: FlipperFirebaseAuthenticationService),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}

// // ./flutterw packages pub run build_runner build --delete-conflicting-outputs
// // flutter packages pub run build_runner build --delete-conflicting-outputs
// //  firebase deploy --only hosting
// // ./flutterw build web