import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_routing/routes.router.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:go_router/go_router.dart';

final isAndroid = UniversalPlatform.isAndroid;
final isIos = UniversalPlatform.isIOS;

class AddProductButtons extends StatelessWidget {
  const AddProductButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: SizedBox(
        width: double.infinity,
        child: Form(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  color: Colors.white70,
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                    child: const Text('Add Product'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff006AFE)),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.blue.withOpacity(0.04);
                          }
                          if (states.contains(MaterialState.focused) ||
                              states.contains(MaterialState.pressed)) {
                            return Colors.blue.withOpacity(0.12);
                          }
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    onPressed: () {
                      GoRouter.of(context).push(Routes.create + "/product");
                    },
                  ),
                ),
              ),
              if (isIos ||
                  isAndroid ||
                  kDebugMode && ProxyService.remoteConfig.isDiscountAvailable())
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    color: Colors.white70,
                    width: double.infinity,
                    height: 40,
                    child: OutlinedButton(
                      child: const Text('Add Discount'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff006AFE)),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.blue.withOpacity(0.04);
                            }
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed)) {
                              return Colors.blue.withOpacity(0.12);
                            }
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      onPressed: () {
                        GoRouter.of(context).push(Routes.discount);
                      },
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  color: Colors.white70,
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                    child: Text('Dismiss'),
                    onPressed: () {
                      Navigator.maybePop(context);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
