import 'package:flipper_dashboard/body.dart';
import 'package:flipper_dashboard/keypad_view.dart';
import 'package:flipper_models/view_models/business_home_viewmodel.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart' as perm;

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
                        icon: SvgPicture.asset("assets/notifications.svg",
                            semanticsLabel: 'Notifications'),
                        label: 'Notifications',
                        selectedIcon: SvgPicture.asset(
                            "assets/notifications.svg",
                            semanticsLabel: 'Notifications'),
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
                child: Column(
                  children: [
                    // give the tab bar a height [can change hheight to preferred height]
                    Padding(
                      padding: const EdgeInsets.fromLTRB(19.0, 15.5, 19.0, 0),
                      child: Container(
                        height: 46,
                        decoration: BoxDecoration(
                          color: const Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(
                            7.0,
                          ),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(2.0, 2.5, 2.5, 2.5),
                          child: TabBar(
                            controller: _tabController,
                            // give the indicator a decoration (color and border radius)
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                7.0,
                              ),
                              color: const Color(0xffFFFFFF),
                            ),
                            labelColor: Colors.black,
                            // labelStyle: tabLabelStyle,
                            // unselectedLabelColor: Colors.black,
                            // indicatorColor: Colors.black,
                            tabs: const [
                              // first tab [you can add an icon using the icon property]
                              SizedBox(
                                height: 41,
                                child: Tab(
                                  text: 'Keypad',
                                ),
                              ),

                              // second tab [you can add an icon using the icon property]
                              SizedBox(
                                height: 41,
                                child: Tab(
                                  text: 'Library',
                                ),
                              ),
                              SizedBox(
                                height: 41,
                                child: Tab(
                                  text: 'Favourites',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // tab bar view here
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          // first tab bar view widget
                          Column(
                            children: [
                              KeyPadView(model: model),
                              header(
                                  context: context,
                                  model: model,
                                  controller: controller,
                                  nodeDisabled: true)
                            ],
                          ),
                          const Center(
                            child: Text(
                              'Library',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          // second tab bar view widget
                          const Center(
                            child: Text(
                              'Favourites',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
