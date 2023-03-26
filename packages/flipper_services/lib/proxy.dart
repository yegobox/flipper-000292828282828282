import 'package:flipper_models/remote_service.dart';
import 'package:flipper_models/whatsapp.dart';
import 'package:flipper_services/FirebaseCrashlyticService.dart';
import 'package:flipper_services/abstractions/analytic.dart';
import 'package:flipper_services/abstractions/printer.dart';
import 'package:flipper_services/abstractions/remote.dart';
import 'package:flipper_models/sync.dart';
import 'package:flipper_services/abstractions/system_time.dart';
import 'package:flipper_services/app_service.dart';
import 'package:flipper_services/billing_service.dart';
import 'package:flipper_services/force_data_service.dart';
import 'package:flipper_services/in_app_review.dart';
import 'package:flipper_services/keypad_service.dart';
import 'package:flipper_services/language_service.dart';
import 'package:flipper_services/local_notification_service.dart';
import 'package:flipper_services/event_service.dart';
import 'package:flipper_services/cron_service.dart';
import 'package:flipper_services/setting_service.dart';
import 'package:universal_platform/universal_platform.dart';
import 'abstractions/api.dart';
import 'abstractions/dynamic_link.dart';
import 'abstractions/location.dart';
import 'abstractions/shareable.dart';
import 'abstractions/storage.dart';
import 'abstractions/upload.dart';
import 'country_service.dart';
import 'firebase_messaging.dart';
import 'locator.dart';
import 'product_service.dart';
import 'package:flipper_models/interface.dart';
import 'package:flipper_models/tax_api.dart';

final isWindows = UniversalPlatform.isWindows;

final Api _apiService = locator<Api>();
final DynamicLink _dynamicLink = locator<DynamicLink>();
final Shareable _share = locator<Shareable>();
// final LoginStandard _auth = locator<LoginStandard>();
final FlipperLocation _location = locator<FlipperLocation>();
// final DB<Business> _db = locator<DB<Business>>();
final LocalStorage _box = locator<LocalStorage>();
final UploadT _upload = locator<UploadT>();
final AppService _appService = locator<AppService>();
final ProductService _productService = locator<ProductService>();
final KeyPadService _keypad = locator<KeyPadService>();
final Language _locale = locator<Language>();
// RemoteService
final Remote _remoteConfig = locator<Remote>();
final Country _country = locator<Country>();
final SettingsService _settings = locator<SettingsService>();
final CronService _reportService = locator<CronService>();
// final PdfInvoiceApi _pdfInvoiceApi = locator<PdfInvoiceApi>();
// final PdfApi _pdfApi = locator<PdfApi>();
final Printer _printService = locator<Printer>();
//rename this to app analytics, i.e analytics for app improvments
final Analytic _analytics = locator<Analytic>();
final ForceDataEntryService _forceDataEntry = locator<ForceDataEntryService>();
final Crash _crash = locator<Crash>();
final LNotification _notification = locator<LNotification>();
final Review _review = locator<Review>();
final SyncApiInterface _syncApi = locator<SyncApiInterface>();
final SystemTime _systemTime = locator<SystemTime>();
final EventService _event = locator<EventService>();
final BillingService _billingService = locator<BillingService>();
final IsarApiInterface _isarApi = locator<IsarApiInterface>();
final RemoteInterface _remoteApi = locator<RemoteInterface>();
final TaxApi _taxApi = locator<TaxApi>();
final WhatsApp _whatsApp = locator<WhatsApp>();
final Messaging _messaging = locator<Messaging>();

abstract class ProxyService {
  static Api get api => _apiService;
  static TaxApi get tax => _taxApi;
  static IsarApiInterface get isarApi => _isarApi;
  static RemoteInterface get remoteApi => _remoteApi;
  static EventService get event => _event;
  static Crash get crash => _crash;
  static Shareable get share => _share;
  static DynamicLink get dynamicLink => _dynamicLink;
  static FlipperLocation get location => _location;
  static LocalStorage get box => _box;
  static AppService get appService => _appService;
  static ProductService get productService => _productService;
  static UploadT get upload => _upload;
  static KeyPadService get keypad => _keypad;
  static Country get country => _country;
  static Language get locale => _locale;
  static Remote get remoteConfig => _remoteConfig;
  static Analytic get analytics => _analytics;
  static SettingsService get settings => _settings;
  static CronService get cron => _reportService;
  static Printer get printer => _printService;
  static ForceDataEntryService get forceDateEntry => _forceDataEntry;
  static LNotification get notification => _notification;
  static Review get review => _review;
  static SyncApiInterface get sync => _syncApi;
  static SystemTime get systemTime => _systemTime;
  static BillingService get billing => _billingService;
  static WhatsApp get whatsApp => _whatsApp;
  static Messaging get messaging => _messaging;
}
