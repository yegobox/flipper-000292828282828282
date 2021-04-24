import 'package:flipper/routes.router.dart';
import 'package:flipper_dashboard/customappbar.dart';
import 'package:flipper_dashboard/payable_view.dart';
import 'package:flutter/material.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_models/models/category.dart';

import 'divider.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({Key? key, required this.categories}) : super(key: key);
  final List<Category> categories;
  Wrap CategoryList({
    required List<Category> categories,
    required BuildContext context,
  }) {
    final List<Widget> list = <Widget>[];

    for (int i = 0; i < categories.length; i++) {
      if (categories[i].name != 'custom') {
        list.add(
          GestureDetector(
            onTap: () {
              // model.updateCategory(category: categories[i]);
            },
            child: SingleChildScrollView(
              child: ListTile(
                title: Text(
                  categories[i].name,
                  style: const TextStyle(color: Colors.black),
                ),
                trailing: Radio<Object?>(
                  value: categories[i].id,
                  activeColor: Theme.of(context)
                      .copyWith(canvasColor: HexColor('#2996CC'))
                      .canvasColor,
                  //This radio button is considered selected if its value matches the groupValue.
                  groupValue:
                      categories[i].focused == true ? categories[i].id : 0,
                  onChanged: (Object? value) {},
                ),
              ),
            ),
          ),
        );
      }
      list.add(Center(
        child: Container(
          width: double.infinity,
          child: const CenterDivider(
            width: double.infinity,
          ),
        ),
      ));
    }
    return Wrap(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPop: () {
          ProxyService.nav.back();
        },
        showActionButton: false,
        title: 'Category',
        icon: Icons.close,
        multi: 3,
        bottomSpacer: 52,
      ),
      body: Wrap(
        children: <Widget>[
          Center(
            child: CenterDivider(
              width: double.infinity,
            ),
          ),
          GestureDetector(
            onTap: () {
              ProxyService.nav.navigateTo(Routes.addCategory);
            },
            child: ListTile(
              title: const Text('Create Category ',
                  style: TextStyle(color: Colors.black)),
              trailing: Wrap(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          CategoryList(categories: categories, context: context),
        ],
      ),
    );
  }
}
