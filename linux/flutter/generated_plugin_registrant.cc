//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <desktop_webview_auth/desktop_webview_auth_plugin.h>
#include <file_selector_linux/file_selector_plugin.h>
#include <flutter_localization/flutter_localization_plugin.h>
#include <isar_flutter_libs/isar_flutter_libs_plugin.h>
#include <printing/printing_plugin.h>
#include <sentry_flutter/sentry_flutter_plugin.h>
#include <system_theme/system_theme_plugin.h>
#include <url_launcher_linux/url_launcher_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) desktop_webview_auth_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DesktopWebviewAuthPlugin");
  desktop_webview_auth_plugin_register_with_registrar(desktop_webview_auth_registrar);
  g_autoptr(FlPluginRegistrar) file_selector_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FileSelectorPlugin");
  file_selector_plugin_register_with_registrar(file_selector_linux_registrar);
  g_autoptr(FlPluginRegistrar) flutter_localization_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FlutterLocalizationPlugin");
  flutter_localization_plugin_register_with_registrar(flutter_localization_registrar);
  g_autoptr(FlPluginRegistrar) isar_flutter_libs_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "IsarFlutterLibsPlugin");
  isar_flutter_libs_plugin_register_with_registrar(isar_flutter_libs_registrar);
  g_autoptr(FlPluginRegistrar) printing_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PrintingPlugin");
  printing_plugin_register_with_registrar(printing_registrar);
  g_autoptr(FlPluginRegistrar) sentry_flutter_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SentryFlutterPlugin");
  sentry_flutter_plugin_register_with_registrar(sentry_flutter_registrar);
  g_autoptr(FlPluginRegistrar) system_theme_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SystemThemePlugin");
  system_theme_plugin_register_with_registrar(system_theme_registrar);
  g_autoptr(FlPluginRegistrar) url_launcher_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "UrlLauncherPlugin");
  url_launcher_plugin_register_with_registrar(url_launcher_linux_registrar);
}
