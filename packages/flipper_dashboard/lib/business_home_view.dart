library flipper_dashboard;

import 'package:flipper_dashboard/payable_view.dart';
import 'package:flipper_dashboard/product_view.dart';
import 'package:flipper_dashboard/sale_indicator.dart';
import 'package:flipper_dashboard/slide_out_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_menu_bar.dart';
import 'home_app_bar.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_models/view_models/business_home_viewmodel.dart';

import 'package:stacked/stacked_annotations.dart';
import 'keypad_head_view.dart';
import 'keypad_view.dart';

@FormView(fields: [FormTextField(name: 'note')])
class BusinessHomeView extends StatefulWidget {
  const BusinessHomeView({Key? key}) : super(key: key);

  @override
  _BusinessHomeViewState createState() => _BusinessHomeViewState();
}

class _BusinessHomeViewState extends State<BusinessHomeView>
    with SingleTickerProviderStateMixin {
  late ValueNotifier<bool> _sideOpenController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late Animation<double> _fadeAnimation;
  late AnimationController _fadeController;
  TextEditingController controller = TextEditingController();
  int tab = 0;
  @override
  void initState() {
    super.initState();
    _setupAnimation();
    _sideOpenController = ValueNotifier<bool>(false);
  }

  void _setupAnimation() {
    _fadeController = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_fadeController);
    _fadeController.forward(from: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _sideOpenController.dispose();
    _fadeController.dispose();
  }

  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BusinessHomeViewModel>.reactive(
      viewModelBuilder: () => BusinessHomeViewModel(),
      builder: (context, model, child) {
        return WillPopScope(
          onWillPop: _onWillPop,
          child: Scaffold(
            key: _scaffoldKey,
            extendBody: true,
            appBar: HomeAppBar(
              scaffoldKey: _scaffoldKey,
              sideOpenController: _sideOpenController,
              child: SaleIndicator(
                totalAmount: 300,
                counts: 30,
                onClick: () {},
                onLogout: () {},
              ),
            ),
            body: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideOutScreen(
                sideOpenController: _sideOpenController,
                side: const Text('Side'),
                main: Column(
                  children: [
                    tab == 0
                        ? KeyPadHead(
                            payable: PayableView(
                              onClick: () {},
                              tickets: 0,
                              orders: 0,
                              duePay: 0,
                            ),
                            onClick: () {},
                            controller: controller,
                            amount: 800,
                          )
                        : SizedBox.shrink(),
                    tab == 0
                        ? KeyPadView(model: model)
                        // show a list of products and on click handle different scenarios
                        : ProductView(userId: '1', items: true),
                  ],
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.add, size: 20, color: Colors.white),
                    const Text(
                      ' Add Product',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: BottomMenubar(
                switchTab: (index) {
                  setState(() {
                    tab = index;
                  });
                },
              ),
            ),
            drawer: Text('I am Side drawer'),
          ),
        );
      },
    );
  }
}
