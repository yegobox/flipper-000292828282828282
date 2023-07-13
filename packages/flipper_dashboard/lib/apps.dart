import 'package:flipper_services/constants.dart';
import 'package:flutter/services.dart';
import 'package:flipper_dashboard/profile.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flipper_services/proxy.dart';
import 'button.dart';
import 'customappbar.dart';
import 'package:flipper_routing/app.locator.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'widgets/analytics_gauge/flipper_analytic.dart';

class Apps extends StatefulWidget {
  final TextEditingController controller;
  final bool isBigScreen;
  final HomeViewModel model;

  Apps({
    Key? key,
    required final TextEditingController controller,
    required final bool isBigScreen,
    required final HomeViewModel model,
  })  : controller = controller,
        isBigScreen = isBigScreen,
        model = model,
        super(key: key);

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  final _routerService = locator<RouterService>();
  Widget _buildCustomPaintWithIcon(
      {required IconData iconData,
      required Color backgroundColor,
      required String page}) {
    return GestureDetector(
      onTap: () async {
        HapticFeedback.lightImpact();
        switch (page) {
          case "keypad":
            _routerService.navigateTo(CheckOutRoute(
              isBigScreen: widget.isBigScreen,
            ));
            return;
          case "Cashbook":
            _routerService
                .navigateTo(CashbookRoute(isBigScreen: widget.isBigScreen));
            return;
          case "Settings":
            _routerService.navigateTo(SettingPageRoute());
            return;
          case "Support":
            final Uri whatsappUri = Uri.parse('https://wa.me/250788360058');
            if (await canLaunchUrl(whatsappUri)) {
              await launchUrl(whatsappUri,
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $whatsappUri';
            }
            return;
          case "Connecta":
            ProxyService.box.write(key: 'defaultApp', value: 2);
            _routerService.navigateTo(SocialHomeViewRoute());
            return;
          case "Orders":
            // ProxyService.box.write(key: 'defaultApp', value: 2);
            // _routerService.navigateTo(SocialHomeViewRoute());
            return;
          case "Transactions":
            _routerService.navigateTo(TransactionsRoute());
            return;
          default:
            _routerService.navigateTo(CheckOutRoute(
              isBigScreen: widget.isBigScreen,
            ));
        }
      },
      child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
          child: Column(
            children: [
              Container(
                width: 59,
                height: 59,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 59,
                        height: 59,
                        decoration: ShapeDecoration(
                          color:
                              Colors.black.withOpacity(0.00009999999747378752),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 59,
                        height: 59,
                        decoration: ShapeDecoration(
                          color: backgroundColor,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.12,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 59,
                                height: 59,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 0.12,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 59,
                                        height: 59,
                                        child: SizedBox(
                                          child: Icon(
                                            iconData,
                                            color: Colors.white,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: backgroundColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(width: 59, height: 59),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                page,
                style: primaryTextStyle.copyWith(color: Colors.grey),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        closeButton: CLOSEBUTTON.WIDGET,
        customTrailingWidget: Container(
          child: FutureBuilder<ITenant?>(
              future: ProxyService.isar
                  .getTenantBYUserId(userId: ProxyService.box.getUserId()!),
              builder: (a, snapshoot) {
                if (snapshoot.connectionState == ConnectionState.waiting ||
                    !snapshoot.hasData) {
                  return const SizedBox.shrink();
                }
                final data = snapshoot.data;
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: SizedBox(
                      height: 40,
                      width: 40,
                      child: ProfileWidget(
                        tenant: data!,
                        size: 25,
                        showIcon: false,
                      )),
                );
              }),
        ),
        customLeadingWidget: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Image.asset(
              'assets/logo.png',
              package: 'flipper_dashboard',
              width: 30,
              height: 30,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              SizedBox(height: 80),
              SemiCircleGauge(
                dataOnGreenSide: 10000,
                dataOnRedSide: 5000,
                startPadding: 10,
              ),
              Row(
                children: [
                  _buildCustomPaintWithIcon(
                      iconData: FluentIcons.dialpad_24_regular,
                      backgroundColor: Colors.blue,
                      page: "POS"),
                  SizedBox(width: 25),
                  _buildCustomPaintWithIcon(
                      iconData: FluentIcons.book_coins_24_regular,
                      backgroundColor: Color.fromARGB(255, 6, 224, 61),
                      page: "Cashbook"),
                  _buildCustomPaintWithIcon(
                      iconData: FluentIcons.arrow_trending_lines_24_regular,
                      backgroundColor: Colors.red,
                      page: "Transactions"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCustomPaintWithIcon(
                      iconData: FluentIcons.communication_20_regular,
                      backgroundColor: Color(0xff99DDFF),
                      page: "Connecta"),
                  SizedBox(width: 10),
                  _buildCustomPaintWithIcon(
                      iconData: FluentIcons.settings_16_regular,
                      backgroundColor: Colors.blueGrey,
                      page: "Settings"),
                  SizedBox(width: 30),
                  _buildCustomPaintWithIcon(
                      iconData: Icons.call,
                      backgroundColor: Colors.blue,
                      page: "Support"),
                  // _buildCustomPaintWithIcon(
                  //     iconData: Icons.shopping_bag,
                  //     backgroundColor: Colors.blue,
                  //     page: "Orders"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
