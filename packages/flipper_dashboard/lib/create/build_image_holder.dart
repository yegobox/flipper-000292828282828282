import 'package:flipper_dashboard/payable_view.dart';
// import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_models/view_models/product_viewmodel.dart';
import 'close_button.dart';

class ImagePlaceHolderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      builder: (context, model, child) {
        return GestureDetector(
          onTap: () {
            //  ProxyService.nav.navigateTo(Routes.editItemTitle);
          },
          child: model.product?.imageUrl == null
              ? Container(
                  height: 80,
                  width: 80,
                  color: model.color != null
                      ? HexColor(model.color.name)
                      : HexColor('#ee5253'),
                )
              : Stack(
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.network(
                        model.product.imageUrl,
                        frameBuilder:
                            (context, child, frame, wasSynchronouslyLoaded) {
                          if (wasSynchronouslyLoaded) {
                            return child;
                          }
                          return AnimatedOpacity(
                            child: child,
                            opacity: frame == null ? 0 : 1,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeOut,
                          );
                        },
                        height: 80,
                        width: 80,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const BuildCloseButton()
                  ],
                ),
        );
      },
      viewModelBuilder: () => ProductViewModel(),
    );
  }
}
