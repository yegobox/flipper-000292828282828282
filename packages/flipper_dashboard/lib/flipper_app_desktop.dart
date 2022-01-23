import 'package:flipper/theme.dart';
import 'package:flipper_dashboard/keypad_view.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flipper_models/models/view_models/business_home_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:provider/provider.dart';

class FlipperApp extends StatefulWidget {
  const FlipperApp({Key? key}) : super(key: key);

  @override
  _FlipperAppState createState() => _FlipperAppState();
}

class _FlipperAppState extends State<FlipperApp> {
  bool value = false;

  int index = 0;

  final colorsController = ScrollController();
  final settingsController = ScrollController();

  @override
  void dispose() {
    colorsController.dispose();
    settingsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    return NavigationView(
      contentShape: RoundedRectangleBorder(
        side: BorderSide(width: 0.8, color: Colors.white),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0),
        ),
      ),
      pane: NavigationPane(
        selected: index,
        onChanged: (i) => setState(() => index = i),
        header: Container(
          height: kOneLineTileHeight,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: const FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 100,
          ),
        ),
        // displayMode: PaneDisplayMode.compact,
        displayMode: appTheme.displayMode,
        // TODOput back the  appTheme.displayMode, after setting up the compact mode
        // PaneDisplayMode
        indicatorBuilder: ({
          required BuildContext context,
          required NavigationPane pane,
          Axis? axis,
          required Widget child,
        }) {
          if (pane.selected == null) return child;
          axis ??= Axis.horizontal;
          assert(debugCheckHasFluentTheme(context));
          final theme = NavigationPaneTheme.of(context);
          switch (appTheme.indicator) {
            case NavigationIndicators.end:
              return EndNavigationIndicator(
                index: pane.selected!,
                offsets: () =>
                    pane.effectiveItems.getPaneItemsOffsets(pane.paneKey),
                sizes: pane.effectiveItems.getPaneItemsSizes,
                child: child,
                color: theme.highlightColor,
                curve: theme.animationCurve ?? Curves.linear,
                axis: axis,
              );
            case NavigationIndicators.sticky:
              return NavigationPane.defaultNavigationIndicator(
                context: context,
                axis: axis,
                pane: pane,
                child: child,
              );
            default:
              return NavigationIndicator(
                index: pane.selected!,
                offsets: () =>
                    pane.effectiveItems.getPaneItemsOffsets(pane.paneKey),
                sizes: pane.effectiveItems.getPaneItemsSizes,
                child: child,
                color: theme.highlightColor,
                curve: theme.animationCurve ?? Curves.linear,
                axis: axis,
              );
          }
        },
        items: [
          PaneItemSeparator(),
          PaneItem(
            icon: Icon(
              appTheme.displayMode == PaneDisplayMode.top
                  ? FluentIcons.more
                  : FluentIcons.more_vertical,
            ),
            title: const Text('Others'),
          ),
        ],
        autoSuggestBox: AutoSuggestBox(
          controller: TextEditingController(),
          items: const ['Item 1', 'Item 2', 'Item 3', 'Item 4'],
        ),
        autoSuggestBoxReplacement: const Icon(FluentIcons.search),
        footerItems: [
          PaneItemSeparator(),
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('Settings'),
          ),
        ],
      ),
      content: NavigationBody(index: index, children: [
        Center(
          child: Text('hello world'),
        )
        // ViewModelBuilder<BusinessHomeViewModel>.reactive(
        //     viewModelBuilder: () => BusinessHomeViewModel(),
        //     onModelReady: (model) async {
        //       String? defaultLanguage = await model.getSetting();

        //       defaultLanguage == null ? Locale('en') : Locale(defaultLanguage);
        //     },
        //     builder: (context, model, child) {
        //       return KeyPadView(
        //         model: model,
        //       );
        //     })
      ]),
    );
  }
}

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasFluentTheme(context));
    assert(debugCheckHasFluentLocalizations(context));
    final ThemeData theme = FluentTheme.of(context);
    final buttonColors = WindowButtonColors(
      iconNormal: theme.inactiveColor,
      iconMouseDown: theme.inactiveColor,
      iconMouseOver: theme.inactiveColor,
      mouseOver: ButtonThemeData.buttonColor(
          theme.brightness, {ButtonStates.hovering}),
      mouseDown: ButtonThemeData.buttonColor(
          theme.brightness, {ButtonStates.pressing}),
    );
    final closeButtonColors = WindowButtonColors(
      mouseOver: Colors.red,
      mouseDown: Colors.red.dark,
      iconNormal: theme.inactiveColor,
      iconMouseOver: Colors.red.basedOnLuminance(),
      iconMouseDown: Colors.red.dark.basedOnLuminance(),
    );
    return Row(
      children: [
        Tooltip(
          message: FluentLocalizations.of(context).minimizeWindowTooltip,
          child: MinimizeWindowButton(colors: buttonColors),
        ),
        Tooltip(
          message: FluentLocalizations.of(context).restoreWindowTooltip,
          child: WindowButton(
            colors: buttonColors,
            iconBuilder: (context) {
              if (appWindow.isMaximized) {
                return RestoreIcon(color: context.iconColor);
              }
              return MaximizeIcon(color: context.iconColor);
            },
            onPressed: appWindow.maximizeOrRestore,
          ),
        ),
        Tooltip(
          message: FluentLocalizations.of(context).closeWindowTooltip,
          child: CloseWindowButton(colors: closeButtonColors),
        ),
      ],
    );
  }
}
