import 'package:flipper_models/view_models/business_home_viewmodel.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart' as perm;

import 'badge_icon.dart';
import 'page_switcher.dart';

final isWindows = UniversalPlatform.isWindows;
final isMacOs = UniversalPlatform.isMacOS;
final isAndroid = UniversalPlatform.isAndroid;
final isWeb = UniversalPlatform.isWeb;

final isDesktopOrWeb = UniversalPlatform.isDesktopOrWeb;

class FlipperApp extends StatefulWidget {
  const FlipperApp({Key? key}) : super(key: key);

  @override
  _FlipperAppState createState() => _FlipperAppState();
}

class _FlipperAppState extends State<FlipperApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController controller = TextEditingController();
  int tabselected = 0;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BusinessHomeViewModel>.reactive(
        viewModelBuilder: () => BusinessHomeViewModel(),
        onModelReady: (model) async {
          model.currentOrder();
          ProxyService.notification.initialize(context);
          ProxyService.notification.listen(context);
          ProxyService.dynamicLink.handleDynamicLink(context);
          model.loadReport();
          await [perm.Permission.storage, perm.Permission.manageExternalStorage]
              .request();
        },
        builder: (context, model, child) {
          return WillPopScope(
            onWillPop: _onWillPop,
            child: Scaffold(
              bottomNavigationBar: NavigationBarTheme(
                data: NavigationBarThemeData(
                  backgroundColor: Colors.white,
                  indicatorColor: Colors.white,
                  labelTextStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black26,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: NavigationBar(
                    height: 90,
                    selectedIndex: tabselected,
                    labelBehavior:
                        NavigationDestinationLabelBehavior.alwaysShow,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    animationDuration: const Duration(seconds: 2),
                    onDestinationSelected: (index) {
                      setState(() {
                        tabselected = index;
                      });
                    },
                    destinations: [
                      NavigationDestination(
                        icon: SvgPicture.asset("assets/checkout.svg",
                            semanticsLabel: 'Checkout'),
                        label: 'Checkout',
                        selectedIcon: SvgPicture.asset("assets/checkout.svg",
                            semanticsLabel: 'Checkout'),
                      ),
                      NavigationDestination(
                        icon: SvgPicture.asset("assets/transactions.svg",
                            semanticsLabel: 'Transactions'),
                        label: 'Transactions',
                        selectedIcon: SvgPicture.asset(
                            "assets/transactions.svg",
                            semanticsLabel: 'Transactions'),
                      ),
                      NavigationDestination(
                        icon: BadgeIcon(
                          icon: SvgPicture.asset("assets/notifications.svg",
                              semanticsLabel: 'Notifications'),
                          badgeCount: 0,
                          badgeColor: Color(0xff006AFE),
                          badgeTextStyle: TextStyle(
                            color: Color(0xff006AFE),
                            fontSize: 8,
                          ),
                        ),
                        label: 'Notifications',
                        selectedIcon: BadgeIcon(
                          icon: SvgPicture.asset("assets/notifications.svg",
                              semanticsLabel: 'Notifications'),
                          badgeCount: 0,
                          badgeColor: Color(0xff006AFE),
                          badgeTextStyle: TextStyle(
                            color: Color(0xff006AFE),
                            fontSize: 8,
                          ),
                        ),
                      ),
                      NavigationDestination(
                        icon: SvgPicture.asset("assets/more.svg",
                            semanticsLabel: 'More'),
                        label: 'More',
                        selectedIcon: SvgPicture.asset("assets/more.svg",
                            semanticsLabel: 'More'),
                      ),
                    ],
                  ),
                ),
              ),
              body: SafeArea(
                child: PageSwitcher(
                  controller: controller,
                  model: model,
                  tabController: _tabController,
                  currentPage: tabselected,
                ),
              ),
            ),
          );
        });
  }

  Future<bool> _onWillPop() async {
    return false;
  }
}
