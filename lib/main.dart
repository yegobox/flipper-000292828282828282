import 'dart:async';
import 'dart:io';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flipper_dashboard/login_choices.dart';
import 'package:flipper_dashboard/printing.dart';
import 'package:flipper_dashboard/backup.dart';
import 'package:flipper_dashboard/tax_configuration.dart';
import 'package:flipper_dashboard/add_discount.dart';
import 'package:flipper_dashboard/add_product_view.dart';
import 'package:flipper_dashboard/devices.dart';
import 'package:flipper_dashboard/drawer.dart' as drawer;
import 'package:flipper_dashboard/no_net.dart';
import 'package:flipper_dashboard/after_sale.dart';
import 'package:flipper_dashboard/collect_cash.dart';
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
import 'package:flipper_dashboard/payment_options.dart';
import 'package:flipper_dashboard/scanner_view.dart';
import 'package:flipper_dashboard/sell.dart';
import 'package:flipper_dashboard/setting_secreen.dart';
import 'package:flipper_dashboard/startup_view.dart';
import 'package:flipper_dashboard/switch_branch_view.dart';
import 'package:flipper_dashboard/transactions_details.dart';
import 'package:flipper_dashboard/tenant_add.dart';
import 'package:flipper_login/pin_login.dart';
import 'package:flipper_login/signup_form_view.dart';
import 'package:flipper_models/view_models/gate.dart';
import 'package:flipper_rw/flipper_localize/lib/flipper_localize.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:go_router/go_router.dart';
import 'package:flipper_login/login.dart';
import 'package:flipper_routing/routes.router.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:flipper_services/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'init.dart'
    if (dart.library.html) 'web_init.dart'
    if (dart.library.io) 'io_init.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final isIos = UniversalPlatform.isIOS;
final isWindows = UniversalPlatform.isWindows;
final isMacOs = UniversalPlatform.isMacOS;
final isAndroid = UniversalPlatform.isAndroid;
final isWeb = UniversalPlatform.isWeb;
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future<void> backgroundHandler(RemoteMessage message) async {
  int id = message.messageId.hashCode;
  var title = message.data['title'];
  var body = message.data['body'];
  // var date = DateTime.now();
  ProxyService.notification.localNotification(id, title, body,
      tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)));
}

class FlipperHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  GoogleFonts.config.allowRuntimeFetching = false;
  foundation.LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield foundation.LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = FlipperHttpOverrides();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  if (isAndroid || isIos) {
    final String timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation(timeZoneName));
  }
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/launcher_icon');

  const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  await GetStorage.init();
  // done init in mobile.//done separation.
  await setupLocator();
  await initDb();
  if (!isWindows && !isWeb) {
    FlutterError.onError = (FlutterErrorDetails details) {
      // Log the error to the console.
      FlutterError.dumpErrorToConsole(details);

      // Send the error to Firebase Crashlytics.
      FirebaseCrashlytics.instance.recordFlutterError(details);
    };
  }
  (!isWindows) ? FirebaseMessaging.onBackgroundMessage(backgroundHandler) : '';
  runZonedGuarded<Future<void>>(() async {
    await SentryFlutter.init(
      (options) {
        options.dsn =
            'https://f3b8abd190f84fa0abdb139178362bc2@o205255.ingest.sentry.io/6067680';
        // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
        // We recommend adjusting this value in production.
        options.tracesSampleRate = 1.0;
      },
    );

    final router = GoRouter(
      initialLocation: Routes.home,
      refreshListenable: loginInfo,
      redirect: (state) {
        final bool loggedIn = loginInfo.isLoggedIn;
        final bool needSignUp = loginInfo.needSignUp;
        final onHome = state.subloc == Routes.home;
        final onLogin = state.subloc == Routes.login;
        final onNoNet = state.subloc == Routes.noNet;
        final String country = loginInfo.country.replaceAll(" ", "");
        final onSignUp = state.subloc == "${Routes.signup}/$country";
        final bool noNet = loginInfo.noNet;
        final bool loginChoices = loginInfo.loginChoices;
        final onTenants = state.subloc == Routes.tenants;
        final routeWithRedirectRules = [
          "${Routes.signup}/$country",
          Routes.login,
          Routes.noNet,
          Routes.home,
          Routes.tenants,
        ];

        if (needSignUp &&
            !onSignUp &&
            routeWithRedirectRules.contains(state.subloc)) {
          return "${Routes.signup}/$country";
        }

        if (loggedIn &&
            !onHome &&
            routeWithRedirectRules.contains(state.subloc)) {
          return Routes.home;
        }

        if (!loggedIn &&
            !onLogin &&
            !needSignUp &&
            !loginChoices &&
            routeWithRedirectRules.contains(state.subloc)) {
          return Routes.login;
        }

        if (noNet &&
            !onNoNet &&
            !onLogin &&
            routeWithRedirectRules.contains(state.subloc)) {
          return Routes.noNet;
        }

        if (loginChoices &&
            !onTenants &&
            !loggedIn &&
            routeWithRedirectRules.contains(state.subloc)) {
          return Routes.tenants;
        }

        return null;
      },
      routes: [
        GoRoute(
          path: '/boot',
          name: 'boot',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const StartUpView(),
          ),
        ),
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const StartUpView(),
          ),
        ),
        GoRoute(
          path: '/signup/:country',
          name: 'signup',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SignUpFormView(
              countryNm: state.params['country']!,
            ),
          ),
        ),
        GoRoute(
          path: '/home',
          name: 'home',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const FlipperApp(),
          ),
        ),
        GoRoute(
          path: '/login',
          name: 'login',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const LoginView(),
          ),
        ),
        GoRoute(
          path: '/create/:handle',
          name: 'create',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const AddProductView(),
          ),
        ),
        GoRoute(
          path: '/edit/:handle/:id',
          name: 'edit',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: AddProductView(
              productId: int.parse(state.params['id']!),
            ),
          ),
        ),
        GoRoute(
          path: '/discount',
          name: 'discount',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const AddDiscount(),
          ),
        ),
        GoRoute(
          path: '/categories',
          name: 'categories',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: ListCategories(
              categories: state.extra! as List<Category>,
            ),
          ),
        ),
        GoRoute(
          path: '/colors',
          name: 'colors',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const ColorTile(),
          ),
        ),
        GoRoute(
          path: '/stock/:id/:stock',
          name: 'stock',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: ReceiveStock(
              variantId: int.parse(state.params['id']!),
              existingStock: state.params['stock']!,
            ),
          ),
        ),
        GoRoute(
          path: '/variation/:productId',
          name: 'variation',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: AddVariation(
              productId: int.parse(state.params['productId']!),
            ),
          ),
        ),
        GoRoute(
          path: '/category',
          name: 'category',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const AddCategory(),
          ),
        ),
        GoRoute(
          path: '/units/:type',
          name: 'units',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: ListUnits(
              type: state.params['type']!,
            ),
          ),
        ),

        GoRoute(
          path: '/sell',
          name: 'sell',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: Sell(
              product: state.extra! as Product,
            ),
          ),
        ),
        // Pass the order object
        GoRoute(
          path: '/pay',
          name: 'pay',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: Payments(
              order: state.extra! as Order,
            ),
          ),
        ),
        GoRoute(
          path: '/collect/:paymentType',
          name: 'collect',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: CollectCashView(
              paymentType: state.params['paymentType']!,
              order: state.extra! as Order,
            ),
          ),
        ),
        GoRoute(
          path: '/sale/:total/:receiptType',
          name: 'sale',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: AfterSale(
              totalOrderAmount: double.parse(state.params['total']!),
              receiptType: state.params['receiptType']!,
              order: state.extra! as Order,
            ),
          ),
        ),
        GoRoute(
          path: '/trDetail',
          name: 'trDetail',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: TransactionDetail(
              order: state.extra! as Order,
            ),
          ),
        ),
        GoRoute(
          path: '/settings',
          name: 'settings',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SettingsScreen(),
          ),
        ),
        GoRoute(
          path: '/switchBranch',
          name: 'switchBranch',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: SwitchBranchView(),
          ),
        ),
        GoRoute(
          path: Routes.analytics,
          name: 'analytics',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            // child: Analytics(),
            child: const Text("analytics were here"),
          ),
        ),
        GoRoute(
          path: "/scann/:intent",
          name: 'scann',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: ScannView(
              intent: state.params['intent']!,
            ),
          ),
        ),
        GoRoute(
          path: '/order',
          name: 'order',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: OrderView(),
          ),
        ),
        GoRoute(
          path: '/browse',
          name: 'browse',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const InAppBrowser(),
          ),
        ),
        GoRoute(
          path: '/customers/:orderId',
          name: 'customers',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: Customers(
              orderId: int.parse(state.params['orderId']!),
            ),
          ),
        ),
        GoRoute(
          path: '/nonetwork',
          name: 'nonetwork',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const NoNet(),
          ),
        ),
        GoRoute(
          path: '/pin',
          name: 'pin',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: PinLogin(),
          ),
        ),
        GoRoute(
          path: '/devices/:pin',
          name: 'devices',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: Devices(pin: int.parse(state.params['pin']!)),
          ),
        ),
        GoRoute(
          path: '/tax_config',
          name: 'tax_config',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const TaxConfiguration(),
          ),
        ),
        GoRoute(
          path: '/printing',
          name: 'printing',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const Printing(),
          ),
        ),
        GoRoute(
          path: '/backup',
          name: 'backup',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const BackUp(),
          ),
        ),
        GoRoute(
          path: '/drawer/:state',
          name: 'drawer',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: drawer.DrawerScreen(
              open: state.params['state']!,
              drawer: state.extra != null ? state.extra as Drawers : null,
            ),
          ),
        ),
        GoRoute(
          path: '/tenants',
          name: 'tenants',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const LoginChoices(),
          ),
        ),
        GoRoute(
          path: '/tenant_add',
          name: 'tenant_add',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const TenantAdd(),
          ),
        )
      ],
    );

    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    runApp(
      OverlaySupport.global(
        child: ChangeNotifierProvider.value(
          value: loginInfo,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'flipper',
            // Define the light theme for the app, based on defined colors and
            // properties above.
            //TODOimplement my own as this is killing design
            // theme: GThemeGenerator.generate(),
            // darkTheme: GThemeGenerator.generateDark(),
            theme: ThemeData(
              useMaterial3: true,
              // colorSchemeSeed: Colors.red
            ),
            localizationsDelegates: [
              FirebaseUILocalizations.withDefaultOverrides(
                const LabelOverrides(),
              ),
              const FlipperLocalizationsDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'), // English
              Locale('es'), // Spanish
            ],
            locale: const Locale('en'),
            // locale: model
            //     .languageService.locale,
            // themeMode: model.settingService.themeMode.value,
            themeMode: ThemeMode.system,
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
          ),
        ),
      ),
    );
    // close splash screen the app is fully initialized
    FlutterNativeSplash.remove();
  }, (error, stack) async {
    await Sentry.captureException(error, stackTrace: stack);
    if (!isWindows) {
      recordBug(error, stack);
    }
  });
}
