library flipper_dashboard;

import 'package:flipper_dashboard/slide_out_screen.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: const Text(''),
        ),
        body: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideOutScreen(
              sideOpenController: _sideOpenController,
              side: const Text('Side'),
              main: Column(
                children: [Text('I am home#2')],
              )),
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
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(Icons.add,
                    size: 20,
                    // These colors are not defined in the Material Design spec.
                    color: Colors.white),
                const Text(
                  ' Add Product',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
