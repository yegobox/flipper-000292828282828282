import 'package:flipper_dashboard/flipper_dashboard.dart';
import 'package:flipper_dashboard/startup_view.dart';
import 'package:flipper_login/login_view.dart';
import 'package:flipper_login/signup_form_view.dart';
import 'package:flipper_dashboard/business_home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: SignUpFormView),
    MaterialRoute(page: BusinessHomeView),
    MaterialRoute(page: LoginView),
  ],
  dependencies: [LazySingleton(classType: NavigationService)],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}

// // ./flutterw packages pub run build_runner build --delete-conflicting-outputs
// // flutter packages pub run build_runner build --delete-conflicting-outputs
// //  firebase deploy --only hosting
// // flutter build web
// NOTE:TODO: when rebuilding login_popup_view remember to add library flipper_login; in generated file
// firebase install https://firebase.flutter.dev/docs/installation/android/
// flutter create --template=package hello
