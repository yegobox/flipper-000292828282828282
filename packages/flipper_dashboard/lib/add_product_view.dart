import 'package:flipper_dashboard/payable_view.dart';
import 'package:flutter/material.dart';
import 'package:flipper_models/view_models/product_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/proxy.dart';
import 'create/build_image_holder.dart';
import 'create/category_view.dart';
import 'create/divider.dart';
import 'create/list_divider.dart';
import 'create/retail_price.dart';
import 'create/section_select_unit.dart';
import 'create/sku_view.dart';
import 'create/supply_price_widget.dart';
import 'customappbar.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({Key? key}) : super(key: key);
  Future<bool> _onWillPop() async {
    // ignore: todo
    // TODO:show a modal for confirming if we want to exit
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      onModelReady: (model) {
        model.createTemporalProduct();
        model.loadCategories();
        model.loadColors();
        model.loadUnits();
      },
      viewModelBuilder: () => ProductViewModel(),
      builder: (context, model, child) {
        return WillPopScope(
          onWillPop: _onWillPop,
          child: Scaffold(
            appBar: CustomAppBar(
              onPop: () {
                ProxyService.nav.back();
              },
              title: 'Create Product',
              disableButton: model.isLocked,
              showActionButton: true,
              onPressedCallback: () async {
                // await model.handleCreateItem();
                ProxyService.nav.back();
              },
              rightActionButtonName: 'Save',
              icon: Icons.close,
              multi: 3,
              bottomSpacer: 42,
            ),
            body: ListView(
              children: <Widget>[
                Column(children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  ImagePlaceHolderView(),
                  const Text('Product'),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Container(
                      width: double.infinity,
                      child: TextFormField(
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.black),
                        // validator: Validators.isValid,
                        onChanged: (String name) async {
                          model.setName(name: name);
                          model.lock();
                        },
                        decoration: InputDecoration(
                          hintText: 'Product name',
                          fillColor: Theme.of(context)
                              .copyWith(canvasColor: Colors.white)
                              .canvasColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: HexColor('#D0D7E3')),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  CategoryView(categories: model.categories),
                  const CenterDivider(
                    width: 300,
                  ),
                  const ListDivider(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Container(
                      width: double.infinity,
                      child: const Text(
                        'PRICE AND INVENTORY',
                      ),
                    ),
                  ),
                  const CenterDivider(
                    width: double.infinity,
                  ),
                  SectionSelectUnit(units: model.units),
                  const CenterDivider(
                    width: double.infinity,
                  ),
                  RetailPrice(onModelUpdate: (value) {}),
                  const CenterDivider(
                    width: double.infinity,
                  ),
                  SupplyPrice(onModelUpdate: (value) {}),
                  GestureDetector(
                    onTap: () {
                      // ProxyService.nav.navigateTo(
                      //   Routing.receiveStock,
                      //   arguments: ReceiveStockScreenArguments(
                      //     id: model.state.variation.id,
                      //   ),
                      // ); //passing a regular variantId to update
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 18, right: 18),
                      child: ListTile(
                        leading: Text('Stock'),
                        trailing: Text('Add Stock',
                            style: TextStyle(color: Colors.blue)),
                      ),
                    ),
                  ),
                  SkuView(
                    onModelUpdate: (value) {},
                  ),
                  const ListDivider(
                    height: 10,
                  ),
                  const ListDivider(
                    height: 10,
                  ),
                  // const VariationList(),//TODO: continue here.!
                ])
              ],
            ),
          ),
        );
      },
    );
  }
}
