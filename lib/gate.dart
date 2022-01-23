import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'package:flipper_models/models/view_models/business_home_viewmodel.dart';
// import 'package:flutter_gen/gen_l10n/flipper_localizations.dart'; // Add this line.
import 'package:flipper/flipper_options.dart';
import 'package:flipper_routing/routes.router.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'localize/lib/gen_l10n/flipper_localizations.dart';
import 'theme.dart';

/// DEFAULT EXAMPLE - Hot Reload Playground
///
/// This example shows how you can define custom colors, use [FlexColorScheme]
/// to theme your app with them, or use a predefined theme.
///
/// It offers a playground you can use to experiment with all its
/// theming properties and optional opinionated sub-theming.
///
/// It also demonstrates how to use a [GoogleFonts] based font as the default
/// font for your app theme, and how to customize the used [TextTheme].
///
/// To learn more about how to use [FlexColorScheme] and all its features,
/// please go through the five tutorial examples in the readme documentation.

// This default example contains a long list of const and final property values
// that are just passed in to the corresponding properties in
// FlexThemeData.light() and FlexThemeData.dark() convenience extension on
// ThemeData to FlexColorScheme.light().toTheme and
// FlexColorScheme.dark().toTheme.
//
// The purpose is to provide any easy to use in-code based playground that
// you can experiment with and use as quick starter template to start using
// FlexColorScheme to make beautiful Flutter themes for your applications.
// It is also a code and comment based quick guide for devs that don't read
// long documentation.
//
// This setup is convenient since you can edit the values for both the light
// and dark theme mode via shared property values on observer the changes
// in the built via hot reload.
// In a real app you might tuck away your color definitions and FlexColorScheme
// settings in a static class with const and final values and static functions
// as required. The other tutorials show one possible example of this as well.
//
// To learn more about using FlexColorScheme, it is recommended to go through
// the step-by-step tutorial that uses examples 1 to 5 to explain and
// demonstrate the features with increasing complexity. Example 5 represents
// the full bonanza where pretty much everything can be changed dynamically
// while running the app.

// For our custom color scheme we define primary and secondary colors,
// but no variant or other colors.
final FlexSchemeColor _schemeLight = FlexSchemeColor.from(
  primary: const Color(0xFF00296B),
  // If you do not want to define secondary, primaryVariant and
  // secondaryVariant, error and appBar colors you do not have to,
  // they will get defined automatically when using the FlexSchemeColor.from()
  // factory. When using FlexSchemeColor.from() you only have to define the
  // primary color, anything not defined will get derived automatically from
  // the primary color and you get a theme that is based just on shades of
  // the provided primary color.
  //
  // With the default constructor FlexSchemeColor() you have to define
  // all 4 main color properties required for a complete color scheme. If you
  // do define them all, then prefer using it, since it can be const.
  //
  // Here we define a secondary color, but if you don't it will get a
  // default shade based on the primary color. When you do define a secondary
  // color, but not a secondaryVariant color, the secondary variant will get
  // derived from the secondary color, instead of from the primary color.
  secondary: const Color(0xFFFF7B00),
);

// These are custom defined matching dark mode colors. Further below we show
// how to compute them based on the light color scheme. You can swap them in the
// code example further below and compare the result of these manually defined
// matching dark mode colors, to the ones computed via the "lazy" designer
// matching dark colors.
final FlexSchemeColor _schemeDark = FlexSchemeColor.from(
  primary: const Color(0xFF6B8BC3),
  secondary: const Color(0xffff7155),
);

// To use a pre-defined color scheme, don't assign any FlexSchemeColor to
// `colors` instead, just pick a FlexScheme and assign it to the `scheme`.
// Try eg the new "Blue Whale" color scheme.
const FlexScheme _scheme = FlexScheme.blueWhale;

// To make it easy to toggle between using the above custom colors, or the
// selected predefined scheme in this example, set _useScheme to true to use the
// selected predefined scheme above, change to false to use the custom colors.
const bool _useScheme = false;

// A quick setting for the themed app bar elevation, it defaults to 0.
// A very low, like 0.5 is pretty nice too, since it gives an underline effect
// visible with e.g. white or light app bars.
const double _appBarElevation = 0.5;

// There is quick setting to put an opacity value on the app bar, so we can
// see content scroll behind it, if we extend the Scaffold behind the AppBar.
const double _appBarOpacity = 0.94;

// If you set _computeDarkTheme below to true, the dark scheme will be computed
// both for the selected scheme and the custom colors, from the light scheme.
// There is a bit of logic hoops below to make it happen via these bool toggles.
//
// Going "toDark()" on your light FlexSchemeColor definition is just a quick
// way you can make a dark scheme from a light color scheme definition, without
// figuring out usable color values yourself. Useful during development, when
// you test custom colors, but usually you probably want to fine tune your
// final custom dark color scheme colors to const values.
const bool _computeDarkTheme = true;

// When you use _computeDarkTheme, use this desaturation % level to calculate
// the dark scheme from the light scheme colors. The default is 35%, but values
// from 20% might work on less saturated light scheme colors. For more
// deep and colorful starting values, you can try 40%. Trivia: The default
// red dark error color in the Material design guide, is computed from the light
// theme error color value, by using 40% with the same algorithm used here.
const int _toDarkLevel = 30;

// To swap primaries and secondaries, set to true. With some color schemes
// interesting and even useful inverted primary-secondary themes can be obtained
// by only swapping the colors on your dark scheme, some where even designed
// with this usage in mind, but not all look so well when using it.
const bool _swapColors = false;

// Use a GoogleFonts, font as default font for your theme.  Not used by default
// in the demo setup, but you can uncomment its usage, further below.
// ignore: unused_element
late String? _fontFamily = GoogleFonts.notoSans().fontFamily;

// Define a custom text theme for the app. Here we have decided that
// Headline1..3 are too big to be useful for us, so we make them a bit smaller
// and that overline is a bit too small and have weird letter spacing.
// const TextTheme _textTheme = TextTheme(
//   headline1: TextStyle(fontSize: 57),
//   headline2: TextStyle(fontSize: 45),
//   headline3: TextStyle(fontSize: 36),
//   overline: TextStyle(fontSize: 11, letterSpacing: 0.5),
// );

// FlexColorScheme before version 4 used the `surfaceStyle` property to
// define the surface color blend mode. If you are migrating from an earlier
// version, no worries it still works as before, but we won't be using it in
// this example anymore.
// When you define a value for the new `surfaceMode` property used below,
// it will also override any defined `surfaceStyle`.
// It is recommended to use this method to make alpha blended surfaces
// starting with version 4.
// The mode `scaffoldSurfaceBackground` is similar to all the previous
// `surfaceStyle` settings, but its blend level is set separately in finer and
// more increments via `blendLevel`. Additionally there are several new surface
// blend mode strategies in version 4, instead of just one.
const FlexSurfaceMode _surfaceMode = FlexSurfaceMode.highBackgroundLowScaffold;

// The alpha blend level strength can be defined separately from the
// SurfaceMode strategy, and has 40 alpha blend level strengths.
const int _blendLevel = 15;

// The `useSubThemes` sets weather you want to opt-in or not on additional
// opinionated sub-theming. By default FlexColorScheme as before does very
// little styling on widgets, other than a few important adjustments, described
// in detail in the readme. By using the sub-theme opt-in, it now also offers
// easy to use additional out-of the box opinionated styling of SDK UI Widgets.
// One key feature is the rounded corners on Widgets that support it.
const bool _useSubThemes = true;

// The opt-in opinionated sub-theming offers easy to use consistent corner
// radius rounding setting on all sub-themes and a ToggleButtons design that
// matches the normal buttons style and size.
// It comes with Material You like rounded defaults, but you can adjust
// its configuration via simple parameters in a passed in configuration class
// called FlexSubThemesData.
// Here are some some configuration examples:
const FlexSubThemesData _subThemesData = FlexSubThemesData(
  // Opt in for themed hover, focus, highlight and splash effects.
  // New buttons use primary themed effects by default, this setting makes
  // the general ThemeData hover, focus, highlight and splash match that.
  // True by default when opting in on sub themes, but you can turn it off.
  interactionEffects: true,

  // When it is null = undefined, the sub themes will use their default style
  // behavior that aims to follow new Material 3 (M3) standard for all widget
  // corner roundings. Current Flutter SDK corner radius is 4, as defined by
  // the Material 2 design guide. M3 uses much higher corner radius, and it
  // varies by widget type.
  //
  // When you set [defaultRadius] to a value, it will override these defaults
  // with this global default. You can still set and lock each individual
  // border radius back for these widget sub themes to some specific value, or
  // to its Material3 standard, which is mentioned in each theme as the used
  // default when its value is null.
  //
  // Set global corner radius. Default is null, resulting in M3 styles, but make
  // it whatever you like, even 0 for a hip to be square style.
  defaultRadius: 0,
  // You can also override individual corner radius for each sub-theme to make
  // it different from the global `cornerRadius`. Here eg. the bottom sheet
  // radius is defined to always be 24:
  bottomSheetRadius: 24,
  // Select input decorator type, only SDK options outline and underline
  // supported no, but custom ones may be added later.
  // TODOcommented this out, as it is causing me issue within app
  // inputDecoratorBorderType: FlexInputBorderType.underline,
  // For a primary color tinted background on the input decorator set to true.
  inputDecoratorIsFilled: true,
  // If you do not want any underline/outline on the input decorator when it is
  // not in focus, then set this to false.
  inputDecoratorUnfocusedHasBorder: true,
  // Elevations have easy override values as well.
  elevatedButtonElevation: 1,
  // Widgets that use outline borders can be easily adjusted via these
  // properties, they affect the outline input decorator, outlined button and
  // toggle buttons.
  thickBorderWidth: 0, // Default is 2.0.
  thinBorderWidth: 0.0, // Default is 1.5.
);

// If true, the top part of the Android AppBar has no scrim, it then becomes
// one colored like on iOS.
const bool _transparentStatusBar = true;

// Usually the TabBar is used in an AppBar. This style themes it right for
// that, regardless of what FlexAppBarStyle you use for the `appBarStyle`.
// If you will use the TabBar on Scaffold or other background colors, then
// use the style FlexTabBarStyle.forBackground.
const FlexTabBarStyle _tabBarForAppBar = FlexTabBarStyle.forAppBar;

// If true, tooltip background brightness is same as background brightness.
// False by default, which is inverted background brightness compared to theme.
// Setting this to true is more Windows desktop like.
const bool _tooltipsMatchBackground = true;

// The visual density setting defaults to same as SDK default value,
// which is `VisualDensity.adaptivePlatformDensity`. You can define a fixed one
// or try `FlexColorScheme.comfortablePlatformDensity`.
// The `comfortablePlatformDensity` is an alternative adaptive density to the
// default `adaptivePlatformDensity`. It makes the density `comfortable` on
// desktops, instead of `compact` as the `adaptivePlatformDensity` does.
// This is useful on desktop with touch screens, since it keeps tap targets
// a bit larger but not as large as `standard` intended for phones and tablets.
final VisualDensity _visualDensity = FlexColorScheme.comfortablePlatformDensity;

// This is just standard `platform` property in `ThemeData`, handy to have as
// a direct property, you can use it to test how things changes on different
// platforms without using `copyWith` on the resulting theme data.
// final TargetPlatform _platform = defaultTargetPlatform;

class Gate extends StatelessWidget {
  Gate({
    Key? key,
    required this.darkMode,
  }) : super(key: key);
  bool darkMode;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BusinessHomeViewModel>.reactive(
        viewModelBuilder: () => BusinessHomeViewModel(),
        onModelReady: (model) async {
          String? defaultLanguage = await model.getSetting();

          defaultLanguage == null ? Locale('en') : Locale(defaultLanguage);
        },
        builder: (context, model, child) {
          return OverlaySupport.global(
            child: ScreenUtilInit(
              builder: () => ChangeNotifierProvider(
                create: (_) => AppTheme(),
                builder: (context, _) {
                  final appTheme = context.watch<AppTheme>();
                  return FluentApp(
                    debugShowCheckedModeBanner: false,
                    title: 'flipper',
                    // Define the light theme for the app, based on defined colors and
                    // properties above.
                    theme: ThemeData(
                      accentColor: appTheme.color,
                      brightness: appTheme.mode == ThemeMode.system
                          ? darkMode
                              ? Brightness.dark
                              : Brightness.light
                          : appTheme.mode == ThemeMode.dark
                              ? Brightness.dark
                              : Brightness.light,
                      visualDensity: VisualDensity.standard,
                      focusTheme: FocusThemeData(
                        glowFactor: is10footScreen() ? 2.0 : 0.0,
                      ),
                    ),
                    // localizationsDelegates:
                    //     AppLocalizations.localizationsDelegates,
                    // supportedLocales: AppLocalizations.supportedLocales,
                    // locale: model.languageService
                    //     .locale, //french == rwanda language in our app
                    themeMode: model.settingService.themeMode.value,
                    // localeResolutionCallback: (locale, supportedLocales) {
                    //   deviceLocale = locale!;
                    //   return locale;
                    // },
                    navigatorKey: StackedService.navigatorKey,
                    onGenerateRoute: StackedRouter().onGenerateRoute,
                  );
                },
              ),
            ),
          );
        });
  }
}
