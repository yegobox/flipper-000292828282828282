import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class FlipperDrawer extends StatelessWidget {
  const FlipperDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DrawerViewModel>.reactive(
      viewModelBuilder: () => DrawerViewModel(),
      onModelReady: (model) {
        // model.getBusiness();
        // model.getBranches();
      },
      builder: (context, model, child) => Container(
        child: Drawer(
          elevation: 0,
          child: Container(
            color: AppColors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const BusinessList(),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 45),
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          children: <Widget>[
                            // Future feature.
                            // _menuListRowButton('Profile',
                            //     icon: AppIcon.profile,
                            //     context: context,
                            //     isEnable: true, onPressed: () {
                            //   _navigateTo('ProfilePage');
                            // }),
                            // _menuListRowButton('Lists',
                            //     context: context,
                            //     icon: AppIcon.lists, onPressed: () {
                            //   //_navigateTo(Routing.allItemScreen);
                            // }),
                            // _menuListRowButton('Reports',
                            //     context: context,
                            //     icon: AppIcon.bookmark, onPressed: () {
                            //   _navigateTo(Routing.salesView);
                            // }),
                            // _menuListRowButton('Items',
                            //     context: context,
                            //     icon: AppIcon.lists, onPressed: () {
                            //   _navigationService.navigateTo(Routing.productView,
                            //       arguments: ProductViewArguments(
                            //           items: true,
                            //           sellingModeView: true,
                            //           userId: '1'));
                            // }),
                            // _menuListRowButton(
                            //   'Payroll',
                            //   context: context,
                            //   icon: AppIcon.moments,
                            //   onPressed: () {
                            //     _navigateTo(Routing.contactView);
                            //   },
                            // ),
                            // _menuListRowButton('Flipper deals',
                            //     context: context, icon: AppIcon.twitterAds),
                            // const Divider(),
                            _menuListRowButton('Settings and privacy',
                                context: context,
                                isEnable: true, onPressed: () {
                              _navigateTo(Routing.settingsView);
                            }),

                            const Divider(),
                            _menuListRowButton(
                              'Help Center',
                              context: context,
                            ),
                            const Divider(),
                            // _menuListRowButton('Logout',
                            //     context: context,
                            //     icon: null,
                            //     onPressed: _logOut,
                            //     isEnable: true),
                          ],
                        ),
                      ),
                      _footer(
                        drawerViewmodel: model,
                        context: context,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
