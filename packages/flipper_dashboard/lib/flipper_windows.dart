import 'package:flipper_models/models/models.dart';
import 'package:flipper_rw/theme.dart';
import 'package:flipper_services/proxy.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/link.dart';
import 'dashboard.dart';
import 'product_view.dart';

class FlipperAppWindows extends StatefulWidget {
  const FlipperAppWindows({Key? key}) : super(key: key);

  @override
  _FlipperAppWindowsState createState() => _FlipperAppWindowsState();
}

class _FlipperAppWindowsState extends State<FlipperAppWindows> {
  bool value = false;

  int index = 0;

  final settingsController = ScrollController();

  @override
  void dispose() {
    settingsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();

    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BusinessHomeViewModel(),
        onModelReady: (BusinessHomeViewModel model) {
          WidgetsBinding.instance?.addPostFrameCallback((_) {
            Future.delayed(const Duration(milliseconds: 40), () {
              if (ProxyService.box.getDefaultDisplayMode() == 'compact') {
                appTheme.displayMode = PaneDisplayMode.compact;
              } else if (ProxyService.box.getDefaultDisplayMode() ==
                  'minimal') {
                appTheme.displayMode = PaneDisplayMode.minimal;
              } else if (ProxyService.box.getDefaultDisplayMode() == 'open') {
                appTheme.displayMode = PaneDisplayMode.open;
              } else if (ProxyService.box.getDefaultDisplayMode() == 'auto') {
                appTheme.displayMode = PaneDisplayMode.auto;
              } else if (ProxyService.box.getDefaultDisplayMode() == 'top') {
                appTheme.displayMode = PaneDisplayMode.top;
              }
            });
          });
        },
        //
        builder: (context, BusinessHomeViewModel model, child) {
          return NavigationView(
            contentShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
            pane: NavigationPane(
              selected: index,
              onChanged: (i) => setState(() => index = i),
              size: const NavigationPaneSize(
                openMinWidth: 250,
                openMaxWidth: 320,
              ),
              header: Container(
                height: kOneLineTileHeight,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset('assets/logo.png'),
              ),
              displayMode: appTheme.displayMode,
              indicatorBuilder: () {
                switch (appTheme.indicator) {
                  case NavigationIndicators.end:
                    return NavigationIndicator.end;
                  case NavigationIndicators.sticky:
                  default:
                    return NavigationIndicator.sticky;
                }
              }(),
              items: [
                PaneItemSeparator(),
                PaneItem(
                  icon: const Icon(FluentIcons.cell_phone),
                  title: const Text('Mobile'),
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
                _LinkPaneItemAction(
                  icon: const Icon(FluentIcons.open_source),
                  title: const Text('Source code'),
                  link: 'https://github.com/bdlukaa/fluent_ui',
                ),
              ],
            ),
            content: NavigationBody(index: index, children: [
              Dashboard(
                model: model,
                sideBuilder: (context, action) {
                  return const ProductView();
                },
              )
            ]),
          );
        });
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
    return Row(children: [
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
    ]);
  }
}

class _LinkPaneItemAction extends PaneItem {
  _LinkPaneItemAction({
    required Widget icon,
    required this.link,
    title,
    infoBadge,
    focusNode,
    autofocus = false,
  }) : super(
          icon: icon,
          title: title,
          infoBadge: infoBadge,
          focusNode: focusNode,
          autofocus: autofocus,
        );

  final String link;

  @override
  Widget build(
    BuildContext context,
    bool selected,
    VoidCallback? onPressed, {
    PaneDisplayMode? displayMode,
    bool showTextOnTop = true,
    bool? autofocus,
  }) {
    return Link(
      uri: Uri.parse(link),
      builder: (context, followLink) => super.build(
        context,
        selected,
        followLink,
        displayMode: displayMode,
        showTextOnTop: showTextOnTop,
        autofocus: autofocus,
      ),
    );
  }
}
