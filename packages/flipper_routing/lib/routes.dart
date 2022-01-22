library flipper_routing;

import 'package:flipper_chat/omni/omni_contacts.dart';
import 'package:flipper_chat/omni_chat.dart';
import 'package:flipper_chat/omni/omni_conversation.dart';
import 'package:flipper_dashboard/add_discount.dart';
import 'package:flipper_dashboard/add_product_view.dart';
import 'package:flipper_dashboard/after_sale.dart';
import 'package:flipper_dashboard/analytic.dart';
import 'package:flipper_dashboard/collect_cash.dart';
import 'package:flipper_dashboard/connection_failed_view.dart';
import 'package:flipper_dashboard/create/add_category.dart';
import 'package:flipper_dashboard/create/add_variation.dart';
import 'package:flipper_dashboard/create/color_tile.dart';
import 'package:flipper_dashboard/create/list_categories.dart';
import 'package:flipper_dashboard/create/list_units.dart';
import 'package:flipper_dashboard/create/receive_stock.dart';
import 'package:flipper_dashboard/customers.dart';
import 'package:flipper_dashboard/flipper_app.dart';
import 'package:flipper_dashboard/inapp_browser.dart';
import 'package:flipper_dashboard/order.dart';
import 'package:flipper_dashboard/order_summary.dart';
import 'package:flipper_dashboard/payment_options.dart';
import 'package:flipper_dashboard/scanner_view.dart';
import 'package:flipper_dashboard/sell.dart';
import 'package:flipper_dashboard/setting_secreen.dart';
import 'package:flipper_dashboard/startup_view.dart';
import 'package:flipper_dashboard/switch_branch_view.dart';
import 'package:flipper_login/otp_view.dart';
import 'package:flipper_login/signup_form_view.dart';
import 'package:flipper_map/flipper_map.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:flipper_login/login_view.dart';

import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true, name: 'initial'),
    MaterialRoute(page: OmniChat, name: 'chat', path: 'omni'),
    MaterialRoute(page: OmniConversation, name: 'convo', path: '/convo'),
    MaterialRoute(page: OmniContacts, name: 'contacts', path: '/contacts'),
    MaterialRoute(page: SignUpFormView, name: 'signup'),
    // MaterialRoute(page: Home, name: 'home'),
    MaterialRoute(page: FlipperApp, name: 'home'),
    MaterialRoute(page: LoginView, name: 'login', path: '/login'),
    MaterialRoute(page: OtpView, name: 'otp'),
    MaterialRoute(page: AddProductView, name: 'product'),
    MaterialRoute(page: AddDiscount, name: 'discount'),
    MaterialRoute(page: ListCategories, name: 'categories'),
    MaterialRoute(page: ColorTile, name: 'colors'),
    MaterialRoute(page: ReceiveStock, name: 'stock'),
    MaterialRoute(page: AddCategory, name: 'category'),
    MaterialRoute(page: AddVariation, name: 'variation'),
    MaterialRoute(page: ListUnits, name: 'units'),
    MaterialRoute(page: OrderSummary, name: 'summary'),
    MaterialRoute(page: Sell, name: 'sell'),
    MaterialRoute(page: Payments, name: 'pay'),
    MaterialRoute(page: CollectCashView, name: 'collect'),
    MaterialRoute(page: AfterSale, name: 'afterSale'),
    MaterialRoute(page: SettingsScreen, name: 'settings'),
    MaterialRoute(page: Analytics, name: 'analytics'),
    MaterialRoute(page: ScannView, name: 'qrview'),
    MaterialRoute(page: SwitchBranchView, name: 'switchBranch'),
    MaterialRoute(page: ConnectionFailedView, name: 'connectionState'),
    MaterialRoute(page: OrderView, name: 'order'),
    MaterialRoute(
        page: InAppBrowser, name: 'inappBrowser', fullscreenDialog: true),
    MaterialRoute(page: MapView, name: 'map'),
    MaterialRoute(page: Customers, name: 'customers'),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}

// ./flutterw packages pub run build_runner build --delete-conflicting-outputs
// flutter packages pub run build_runner build --delete-conflicting-outputs
//  firebase deploy --only hosting
//  firebase deploy --only functions
// // flutter build web
// NOTE:TODO: when rebuilding login_popup_view remember to add library flipper_login; in generated file
// firebase install https://firebase.flutter.dev/docs/installation/android/
// flutter create --template=package hello
// flutter run -d chrome --release
//  flutter pub add moor_flutter
// flutter pub run msix:create
//cheat code
//TODO: push notification service https://github.com/Pronto-AG/Pronto-MIA-App/blob/master/pronto_mia/lib/core/services/push_notification_service.dart
// find . -name '*.dart' | xargs wc -l
//  59153 + 550 +16564 = 76267
// sudo a2enmod proxy_wstunnel (enabling apache sockets)
// bb-operations-sql.database.windows.net
// 1433
// https://github.com/metrogistics/laravel-azure-ad-oauth

//TODO: The nex things in consumer app!
// https://github.com/JoshuaR503/Stock-Market-App
// https://www.youtube.com/watch?v=IbJt7tr8kL0
// https://developers.amadeus.com/self-service/category/air/api-doc/flight-offers-search/api-reference 
// https://github.com/amadeus4dev/amadeus-java
// TODO: Qr code.!
// https://www.youtube.com/watch?v=hHehIGfX_yU

// TODO:changed data type of id from string to int, if go back to couchbase need to change that too where I am using uid;
//carefully look for where the ID is used while building object eg unit and turn back to Int when accessing data as when saved it was changed to int on couchbaseside.
// https://dev.to/ashishrawat2911/handling-network-calls-and-exceptions-in-flutter-54me
// https://docs.microsoft.com/en-us/windows/msix/package/signing-package-device-guard-signing
// https://github.com/marketplace/actions/windows-store-publish

// cameras to buy
// 1) go pro 9 black
// 2) https://snapmounts.com/

// share one tab of google sheets
// https://www.youtube.com/watch?v=Sj_uGLZqBmc

// dataModels update
// https://docs.objectbox.io/advanced/data-model-updates
// A/B Testing.
// https://firebase.google.com/docs/ab-testing/abtest-config#java

// on DeleteOfOrderItem call another func to update tickets this can be refreshing tickets..
// version.(1)
// TODO: implement geofancing of businesses and customers 
// https://pub.dev/packages/geofence_service (if I am near a shop in 100 metters to receive advert of business willing to offer me deal)
// a user will set the price he is willing to pay and item then he get adverts related to the settings.


// masterting analytics
// https://medium.com/flutterdevs/firebase-analytics-2044e865efc4

// test pin:085214


// when adding new repo with other submodules
// git submodule add https://github.com/yegobox/system_time_check.git open-sources/system_time_check
// https://gist.github.com/myusuf3/7f645819ded92bda6677

// %AppData%
// This will not restart the server.!
// docker-compose up -d --no-deps --build app-server  

// TODO:when want to calculate distance between points
// https://flutteragency.com/total-distance-from-latlng-list-in-flutter/
// git add . && git stash && git pull origin main && gradle build && docker-compose up --build -d

// TODO: use repeat ionicons in chat's fload button.

// debug key: when debugging
// https://stackoverflow.com/questions/12456491/i-dont-remember-my-android-debug-keystore-password
// keytool -list -v -keystore ~/.android/debug.keystore

//when prod: when prod
// keytool -list -v -keystore

// ongoing: twitter bot experiment.
// https://www.socialseer.com/twitter-programming-in-java-with-twitter4j/authentication-with-twitter/pin-based-authentication-in-java-with-twitter4j/

//TODO: before using this:check if it works for browser too
// https://pub.dev/packages/nb_utils
// TODO: when making 5M per month, will switch to fluent UI as core UI of flipper
// https://pub.dev/packages/fluent_ui

//  List<FileSystemEntity> es =
// Directory(dir.path + '/db_1/data.mdb').listSync();
// for (FileSystemEntity e in es) {
// print(e.absolute);
// }
// more about fluent.
// https://itnext.io/flutter-building-beautiful-windows-apps-fluent-design-structure-and-navigation-e53a394988d2
// https://morioh.com/p/4993f57bd08f

// certbot certonly --manual --preferred-challenges=dns --email yegobox@gmail.com --server https://acme-v02.api.letsencrypt.org/directory --agree-tos -d flipper.yegobox.com
// https://stackoverflow.com/questions/32209897/class-illuminate-html-htmlserviceprovider-not-found
// https://medium.com/@saurabh6790/generate-wildcard-ssl-certificate-using-lets-encrypt-certbot-273e432794d7

// Firebase.initializeApp(
// options: const FirebaseOptions(
//   appId: '1:672237316015:web:e289bfb5c92506c1c2715a',
//   apiKey: 'AIzaSyCpnbw9i23T0237jgd2ladtPgsGYbmioqA',
//   databaseURL: "https://yegobox-2ee43.firebaseio.com",
//   storageBucket: 'yegobox-2ee43.appspot.com',
//   messagingSenderId: '672237316015',
//   projectId: 'yegobox-2ee43',
//   authDomain: 'auth.flipper.rw',
//   measurementId: "G-88GKL70K3K",
// ),
// );

// whatsapp bot
// https://www.facebook.com/business/help/456220311516626?id=2129163877102343
// https://developers.facebook.com/docs/whatsapp/api/account
// https://developers.facebook.com/docs/whatsapp/api/account

// Development
// https://developers.facebook.com/docs/whatsapp/installation/dev-single-instance

// https://github.com/FilledStacks/stacked/issues/449

// TODOuse backdrop the front will show the tickets instead of using the bottom sheet.
// https://pub.dev/packages/backdrop
// Integrate local report as option
  // https://pub.dev/packages/excel

// dart define in case we need to use it.
// https://itnext.io/flutter-1-17-no-more-flavors-no-more-ios-schemas-command-argument-that-solves-everything-8b145ed4285d

// Back to testing shoule use this mock!
// https://github.com/VeryGoodOpenSource/mockingjay

// learn more about
// https://github.com/felangel/flow_builder/issues/36

// Read more about flank
// https://medium.com/swlh/scalable-gitlab-android-tests-configs-with-flank-for-firebase-test-lab-a1d743fc12c5
// https://github.com/Flank/flank/blob/master/docs/flank-github-action/store_documentation.md

// Read more about sylph suitable for flutter ui test.
// https://github.com/mmcc007/sylph
// https://blog.bitrise.io/post/5-tips-tricks-for-mobile-testing?utm_source=website&utm_medium=email&utm_campaign=MEP-ebook
// Contact service
// https://pub.dev/packages/contacts_service
// https://pub.dev/packages/flutter_contacts
// https://api.flutter.dev/flutter/cupertino/CupertinoTextFormFieldRow-class.html

// Implement a feature to advertize products products to consumers passing.
// https://github.com/VNAPNIC/UDP-TCP-Flutter
// https://pub.dev/packages/flutter_nearby_connections

// Customer support feature
// ability to auto record a call: https://pub.dev/packages/record

//TODO firebase performance
// adb logcat -s FirebasePerformance
// FiXME: !D/, !I/
// https://pub.dev/packages/toggle_switch
// https://pub.dev/packages/auto_size_text

// docker run --rm -it -v $(pwd):/data --publish 0.0.0.0:908:9999 -d --publish 0.0.0.0:907:9980 --user $UID objectboxio/sync:21.5.14-server --model ./data/objectbox-model.json --unsecured-no-authentication --browser-bind 0.0.0.0:9980

// docker run --rm -it -v $(pwd):/data --publish 0.0.0.0:908:9999  --publish 0.0.0.0:907:9980 --user $UID objectboxio/sync:21.5.14-server --model ./data/objectbox-model.json --unsecured-no-authentication --browser-bind 0.0.0.0:9980

// use config file
// docker run --rm -it -v $(pwd):/data --publish 0.0.0.0:908:9999  --publish 0.0.0.0:907:9980 -d --user $UID objectboxio/sync:21.5.14-server --browser-bind 0.0.0.0:9980

// push all branches to github
// git push origin --mirror

// Microsoft stuff.
// https://www.microsoft.com/en-us/microsoft-365/business/compare-all-microsoft-365-business-products
// https://admin.microsoft.com/AdminPortal/Home#/users
// info@yegobox1.onmicrosoft.com
// User details
// Display name: info
// Username:info@yegobox.com
// Password: :Love:is:good::