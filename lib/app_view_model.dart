import 'package:flipper_dashboard/setting_view_model.dart';
import 'package:flutter/material.dart';

import 'localize/lib/gen_l10n/flipper_localizations.dart';

class AppViewModel extends SettingViewModel {
  void setLocale(Locale locale) {
    if (!AppLocalizations.supportedLocales.contains(locale)) return;
    klocale = locale;
    notifyListeners();
  }
}
