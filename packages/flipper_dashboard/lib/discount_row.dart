import 'package:flipper_routing/routes.router.dart';
import 'package:flipper/localization.dart';
import 'package:flipper_dashboard/payable_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_text_drawable/flutter_text_drawable.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flipper_models/view_models/product_viewmodel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_models/discount.dart';
import 'package:flipper_services/constants.dart';

class DiscountRow extends StatelessWidget {
  const DiscountRow(
      {Key? key,
      required this.name,
      required this.hasImage,
      this.imageUrl,
      this.addToMenu,
      required this.discount,
      required this.edit,
      required this.model,
      required this.delete})
      : super(key: key);
  final String name;
  final bool hasImage;
  final String? imageUrl;
  final Discount discount;
  final Function delete;
  final Function? addToMenu;
  final Function edit;
  final ProductViewModel model;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: GestureDetector(
        onTap: () {
          /// add the discount to total amount of entire cart
          /// show the notification that we have added discount to cart
        },
        onLongPress: () {},
        child: Column(children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(0, 0, 15.w, 0),
            leading: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: 58.w,
              child: CircleAvatar(
                child: Container(
                  height: 10,
                  child: Icon(
                    Ionicons.pricetags_sharp,
                    color: black,
                  ),
                ),
              ),
            ),
            title: Text(
              name,
              style: const TextStyle(color: Colors.black),
            ),
            trailing: Text(discount.amount.toString() + ' off'),
          ),
          Container(
            height: 0.5.h,
            color: Colors.black26,
          ),
        ]),
      ),
      actions: [
        IconSlideAction(
          caption: Localization.of(context)!.addTomenu,
          color: Colors.white,
          icon: Icons.menu,
          onTap: () {
            // addToMenu(discount.id);
          },
        ),
      ],
      secondaryActions: <Widget>[
        if (ProxyService.remoteConfig.isMenuAvailable())
          IconSlideAction(
            caption: Localization.of(context)!.addTomenu,
            color: Colors.white,
            icon: Icons.menu,
            onTap: () {
              // addToMenu(discount.id);
            },
          ),
        IconSlideAction(
          caption: Localization.of(context)!.edit,
          color: Colors.white,
          icon: Icons.edit,
          onTap: () {
            edit(discount.id);
          },
        ),
        IconSlideAction(
          caption: Localization.of(context)!.delete,
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {
            delete(discount.id);
          },
        ),
      ],
      actionPane: SlidableDrawerActionPane(),
    );
  }
}
