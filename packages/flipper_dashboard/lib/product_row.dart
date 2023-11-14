import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flipper_dashboard/text_drawable.dart';
import 'package:flipper_login/colors.dart';
import 'package:flipper_routing/app.locator.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:flipper_services/constants.dart';
import 'package:flipper_services/proxy.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:google_fonts/google_fonts.dart';

Map<int, String> positionString = {
  0: 'first',
  1: 'second',
  2: 'third',
  3: 'fourth',
  4: 'fifth',
  5: 'sixth',
  6: 'seventh',
  7: 'eighth',
  8: 'ninth',
  9: 'tenth',
  10: 'eleventh',
  11: 'twelvth',
  12: 'thirteenth',
  13: 'fourteenth',
  14: 'fifteenth',
  15: 'sixteenth'
};

class RowItem extends StatelessWidget {
  final String color;
  final String name;
  final String? imageUrl;
  final Function delete;
  final Function edit;
  final Function enableNfc;
  final ProductViewModel model;
  final List<Stock?> stocks;
  final Variant? variant;
  final Product? product;
  final bool? addFavoriteMode;
  final int? favIndex;
  final _routerService = locator<RouterService>();

  RowItem({
    Key? key,
    required this.color,
    required this.name,
    required this.stocks,
    required this.delete,
    required this.edit,
    required this.enableNfc,
    required this.model,
    this.imageUrl,
    this.variant,
    this.product,
    this.addFavoriteMode,
    this.favIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 0.5,
        ),
        Slidable(
          key: Key('slidable-${product?.id ?? variant?.id}'),
          child: InkWell(
            onTap: () {
              onRowClick(context);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 58,
                  child: imageUrl?.isEmpty ?? true
                      ? TextDrawable(
                          backgroundColor: HexColor(color),
                          text: name,
                          isTappable: true,
                          onTap: null,
                          boxShape: BoxShape.rectangle,
                        )
                      : CachedNetworkImage(
                          imageUrl: imageUrl!,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        stocks.isNotEmpty
                            ? 'In stock: ' +
                                stocks.first!.currentStock.toString()
                            : 'In stock: 0.0',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                product != null
                    ? Container(
                        width: 80,
                        child: StreamBuilder<List<Variant>>(
                          stream: ProxyService.isar.geVariantStreamByProductId(
                            productId: product!.id,
                          ),
                          builder: (context, snapshot) {
                            if (snapshot.data?.isNotEmpty == true &&
                                snapshot.data!.length > 1) {
                              return const Text(
                                ' Prices',
                                style: TextStyle(color: Colors.black),
                              );
                            } else {
                              if (stocks.isNotEmpty &&
                                  stocks.first!.retailPrice != null) {
                                return Text(
                                  'RWF ' + stocks.first!.retailPrice.toString(),
                                  style: const TextStyle(color: Colors.black),
                                );
                              } else {
                                return const Text(
                                  'RWF ',
                                  style: TextStyle(color: Colors.black),
                                );
                              }
                            }
                          },
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          startActionPane: ActionPane(
            motion: ScrollMotion(
              key: Key('dismissable-${product?.id ?? variant?.id}'),
            ),
            children: [
              SlidableAction(
                onPressed: (_) {
                  delete(product?.id ?? variant?.id);
                },
                backgroundColor: const Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: FluentIcons.delete_20_regular,
                label: '',
              ),
              SlidableAction(
                onPressed: (_) {
                  edit(product?.id ?? variant?.id);
                },
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                icon: FluentIcons.edit_24_regular,
                label: '',
              ),
              if (variant == null) // Only show NFC action for Products
                SlidableAction(
                  onPressed: (_) {
                    enableNfc(product);
                  },
                  backgroundColor:
                      product?.nfcEnabled == true ? Colors.blue : Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.nfc,
                  label: '',
                ),
            ],
          ),
          endActionPane: ActionPane(
            motion: ScrollMotion(
              key: Key('dismissable-${product?.id ?? variant?.id}'),
            ),
            children: [
              SlidableAction(
                onPressed: (_) {
                  edit(product?.id ?? variant?.id);
                },
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                icon: FluentIcons.edit_24_regular,
                label: '',
              ),
            ],
          ),
        ),
      ],
    );
  }

  void onRowClick(BuildContext context) {
    log("tap recognized");
    if (addFavoriteMode != null && addFavoriteMode == true) {
      String? position = positionString[favIndex!];
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Confirm Favorite'),
            content: Text(
                'You are about to add $name to your $position favorite position.\n\nDo you approve?'),
            actions: <Widget>[
              OutlinedButton(
                child: Text('Yes',
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
                style: primaryButtonStyle,
                onPressed: () => {
                  model.addFavorite(
                      favIndex: favIndex!, productId: product!.id),
                  model.rebuildUi(),
                  Navigator.of(context).pop(),
                  Navigator.of(context).pop(),
                },
              ),
              OutlinedButton(
                child: Text('No',
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff006AFE)),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.blue.withOpacity(0.04);
                      }
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return Colors.blue.withOpacity(0.12);
                      }
                      return null;
                    },
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(false),
              ),
            ],
          );
        },
      );
    } else {
      _routerService.navigateTo(product != null
          ? SellRoute(product: product!)
          : SellRoute(product: product!));
    }
  }
}
