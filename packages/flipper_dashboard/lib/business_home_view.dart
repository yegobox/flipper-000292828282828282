library flipper_dashboard;

import 'package:flipper_dashboard/slide_out_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_menu_bar.dart';
import 'home_app_bar.dart';

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
  }

  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: HomeAppBar(
          scaffoldKey: _scaffoldKey,
          sideOpenController: _sideOpenController,
          child: Text('I am appBar custom'),
        ),
        body: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideOutScreen(
            sideOpenController: _sideOpenController,
            side: const Text('Side'),
            main: Column(
              children: [Text('I am home#2')],
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
        bottomNavigationBar: BottomMenubar(
          switchTab: (index) {
            print('here$index');
          },
        ),
        drawer: Text('I am Side drawer'),
      ),
    );
  }
}
