// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flipper_dashboard/add_product_view.dart';
import 'package:flipper_dashboard/business_home_view.dart';
import 'package:flipper_dashboard/create/categories_view.dart';
import 'package:flipper_dashboard/create/color_tile.dart';
import 'package:flipper_dashboard/create/receive_stock.dart';
import 'package:flipper_dashboard/flipper_dashboard.dart';
import 'package:flipper_dashboard/startup_view.dart';
import 'package:flipper_login/login_view.dart';
import 'package:flipper_login/signup_form_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Routes {
  static const String startUpView = '/';
  static const String dashboardView = '/dashboard-view';
  static const String signUpFormView = '/sign-up-form-view';
  static const String businessHomeView = '/business-home-view';
  static const String loginView = '/login-view';
  static const String addProductView = '/add-product-view';
  static const String categoriesView = '/categories-view';
  static const String colorTile = '/color-tile';
  static const String receiveStock = '/receive-stock';
  static const all = <String>{
    startUpView,
    dashboardView,
    signUpFormView,
    businessHomeView,
    loginView,
    addProductView,
    categoriesView,
    colorTile,
    receiveStock,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.dashboardView, page: DashboardView),
    RouteDef(Routes.signUpFormView, page: SignUpFormView),
    RouteDef(Routes.businessHomeView, page: BusinessHomeView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.addProductView, page: AddProductView),
    RouteDef(Routes.categoriesView, page: CategoriesView),
    RouteDef(Routes.colorTile, page: ColorTile),
    RouteDef(Routes.receiveStock, page: ReceiveStock),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    DashboardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DashboardView(),
        settings: data,
      );
    },
    SignUpFormView: (data) {
      var args = data.getArgs<SignUpFormViewArguments>(
        orElse: () => SignUpFormViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpFormView(key: args.key),
        settings: data,
      );
    },
    BusinessHomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BusinessHomeView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
    AddProductView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddProductView(),
        settings: data,
      );
    },
    CategoriesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CategoriesView(),
        settings: data,
      );
    },
    ColorTile: (data) {
      var args = data.getArgs<ColorTileArguments>(
        orElse: () => ColorTileArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ColorTile(key: args.key),
        settings: data,
      );
    },
    ReceiveStock: (data) {
      var args = data.getArgs<ReceiveStockArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReceiveStock(
          key: args.key,
          variantId: args.variantId,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SignUpFormView arguments holder class
class SignUpFormViewArguments {
  final Key? key;
  SignUpFormViewArguments({this.key});
}

/// ColorTile arguments holder class
class ColorTileArguments {
  final Key? key;
  ColorTileArguments({this.key});
}

/// ReceiveStock arguments holder class
class ReceiveStockArguments {
  final Key? key;
  final String variantId;
  ReceiveStockArguments({this.key, required this.variantId});
}
