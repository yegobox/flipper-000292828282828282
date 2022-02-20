import 'package:flipper_dashboard/discount_row.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flipper_routing/routes.router.dart';
import 'package:flipper_models/models/models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'product_row.dart';
import 'package:flipper_services/proxy.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flipper_routing/routes.logger.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:go_router/go_router.dart';

final isWindows = UniversalPlatform.isWindows;
final isMacOs = UniversalPlatform.isMacOS;

class ProductView extends StatefulWidget {
  const ProductView({
    Key? key,
    required this.userId,
    required this.items,
    this.sellingModeView = false,
  }) : super(key: key);

  final bool items;
  final bool sellingModeView;
  final String userId;

  @override
  _onCreate createState() => _onCreate(userId, items, sellingModeView);
}

// ignore: camel_case_types
class _onCreate extends State<ProductView> {
  _onCreate(this.userId, this.items, this.sellingModeView);

  bool search = false;
  bool spinner = false;
  final bool items;
  final bool sellingModeView;
  final String userId;
  TextEditingController? etSearch;
  String? strSearch;
  String dropdownValue = 'All Items';

  Widget editModeView({required ProductViewModel model}) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                // model.navigateTo(path: Routing.productsListView);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('All Items',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.grey[800]))),
                  ),
                  Expanded(
                    flex: 1,
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Row(children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                        child: const Icon(
                          FontAwesomeIcons.chevronDown,
                          size: 20,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            //Categories

            const SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: () {
                // model.navigateTo(path: Routing.listCategoryView);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Categories',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Row(children: [
                      const Expanded(
                        child: Icon(
                          FontAwesomeIcons.chevronRight,
                          size: 20,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            //===Modifier
            // Divider(
//                color: Colors.grey[300],
//              ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Modifiers',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.grey[800]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(children: [
                    const Expanded(
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        size: 20,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            // Discount
            // Divider(
//                color: Colors.grey[300],
//              ),
            const SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: () {
                // model.navigateTo(path: Routing.discountView);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('Discounts',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.grey[800]))),
                  ),
                  Expanded(
                    flex: 1,
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Row(children: [
                      const Expanded(
                          child: Icon(
                        FontAwesomeIcons.chevronRight,
                        size: 20,
                      )),
                    ]),
                  ),
                ],
              ),
            ),
            // Option
            // Divider(
//                color: Colors.grey[300],
//              ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Options',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(
                    children: const [
                      Expanded(
                        child: Icon(
                          FontAwesomeIcons.chevronRight,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Discount
            // Divider(
//                color: Colors.grey[300],
//              ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Units',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: const [
                      Expanded(
                        child: Icon(
                          FontAwesomeIcons.chevronRight,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget sellingMode(
      {required ProductViewModel model, required BuildContext context}) {
    return BuildProductsView(model: model);
  }

  Widget searchItems(
      {required ProductViewModel model, required BuildContext context}) {
    if (search == false) {
      // _dropDownMenuItems = getDropDownMenuItems();
      return Column(children: [
        Container(
          decoration: const BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Color(0xffc1c6cb)),
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    spinner = true;
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 12),
                    child: const Text('Dropdown'),
                  ),
                ),
              ),
              const SizedBox(
                width: 1,
                height: 48,
                // color: Colors.black26,
              ),
              GestureDetector(
                onTap: () {
                  search = true;
                  setState(() {});
                },
                child: Image.asset(
                  'assets/ic_search.png',
                  alignment: Alignment.center,
                  width: 45,
                  height: 30,
                ),
              ),
              if (ProxyService.remoteConfig.scannSelling() &&
                  !isWindows &&
                  !isMacOs)
                GestureDetector(
                  onTap: () {
                    // pass fake intent the intent will come from what we scann!
                    GoRouter.of(context).push(Routes.scann + "/se");
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Icon(FluentIcons.add),
                  ),
                )
            ],
          ),
        ),
        Flexible(child: BuildProductsView(model: model)),
      ]);
    } else {
      return Column(children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color(0xffc1c6cb)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 12),
                  child: TextFormBox(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.black,
                    controller: etSearch,
                    // onChanged: (value) => strSearch = value,
                    onChanged: (searchKey) {
                      model.filterProduct(searchKey: searchKey);
                    },
                    style: const TextStyle(
                      color: Color(0xff3d454c),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  search = false;

                  setState(() {});
                },
                child: Image.asset(
                  'assets/ic_cancel.png',
                  alignment: Alignment.center,
                  width: 50,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
        Flexible(child: BuildProductsView(model: model)),
      ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    etSearch = TextEditingController(text: strSearch);
    dropdownValue = 'All Items';
    // _dropDownMenuItems = getDropDownMenuItems();

    return ViewModelBuilder<ProductViewModel>.reactive(
      builder: (context, model, child) {
        return sellingModeView
            ? editModeView(model: model)
            : searchItems(model: model, context: context);
      },
      onModelReady: (model) {
        model.loadProducts();
      },
      viewModelBuilder: () => ProductViewModel(),
    );
  }
}

class BuildProductsView extends StatelessWidget {
  final log = getLogger('_onCreate');
  BuildProductsView({
    Key? key,
    required this.model,
  }) : super(key: key);
  final ProductViewModel model;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        /// show the discounts..
        if (ProxyService.remoteConfig.isDiscountAvailable())
          ...model.productService.discounts.map((discount) {
            return DiscountRow(
              discount: discount,
              name: discount.name,
              model: model,
              hasImage: false,
              delete: (id) {
                model.deleteDiscount(id: id);
              },
              edit: (discount) {
                // ProxyService.nav.navigateTo(
                //   Routes.discount,
                //   arguments: AddDiscountArguments(
                //     discount: discount,
                //   ),
                // );
              },
              applyDiscount: (discount) async {
                await model.applyDiscount(discount: discount);
                showSimpleNotification(
                  const Text('Apply discount'),
                  background: Colors.green,
                  position: NotificationPosition.bottom,
                );
              },
            );
          }).toList(),

        /// show the products
        ...model.productService.products.map(
          (product) {
            return ProductRow(
              color: product.color,
              stocks: model.productService
                  .loadStockByProductId(productId: product.id),
              model: model,
              hasImage: product.hasPicture,
              product: product,
              name: product.name,
              imageUrl: product.imageUrl,
              edit: (productId) {
                GoRouter.of(context).push(Routes.product + "/$productId");
              },
              addToMenu: (productId) {
                model.addToMenu(productId: productId);
              },
              delete: (productId) {
                model.deleteProduct(productId: productId);
              },
            );
          },
        ).toList()
      ],
    );
  }
}
