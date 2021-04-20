import 'package:flipper_dashboard/payable_view.dart';
import 'package:flutter/material.dart';
import 'package:flipper_services/proxy.dart';
import 'custom_rect_tween.dart';
import 'package:flipper/routes.router.dart';

const String addProductHero = 'addProductHero';

/// Popup card to add a new [Todo]. Should be used in conjuction with
/// [HeroDialogRoute] to achieve the popup effect.
///
/// Uses a [Hero] with tag [OptionModal].

class OptionModal extends StatelessWidget {
  const OptionModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: addProductHero,
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin, end: end);
          },
          child: Material(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Form(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FlatButton(
                              color: Theme.of(context)
                                  .copyWith(canvasColor: HexColor('#0097e6'))
                                  .canvasColor,
                              onPressed: () async {
                                ProxyService.nav
                                    .navigateTo(Routes.addProductView);
                              },
                              child: Text(
                                'Add Product',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white70,
                            width: double.infinity,
                            height: 60,
                            child: OutlineButton(
                              onPressed: () {},
                              child: const Text('Create Discount'),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FlatButton(
                              child: const Text('Dismiss'),
                              onPressed: () {
                                ProxyService.nav.back();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
