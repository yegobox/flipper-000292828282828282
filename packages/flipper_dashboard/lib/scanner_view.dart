import 'package:flipper_services/constants.dart';
import 'package:flipper_ui/toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

import 'package:flipper_services/proxy.dart';
import 'package:overlay_support/overlay_support.dart';
import 'dart:io';
import 'package:flipper_routing/app.locator.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
//

class ScannView extends StatefulWidget {
  const ScannView({Key? key, this.intent = 'selling'}) : super(key: key);
  final String intent;

  @override
  State<StatefulWidget> createState() => _ScannViewState();
}

class _ScannViewState extends State<ScannView> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  final _routerService = locator<RouterService>();
  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BusinessHomeViewModel>.reactive(
      viewModelBuilder: () => BusinessHomeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: 392.7,
                child: _buildQrView(context, model),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 1 - 120,
                left: MediaQuery.of(context).size.width / 2 - 30,
                right: MediaQuery.of(context).size.width / 2 - 20,
                child: IconButton(
                  iconSize: 40,
                  onPressed: () => _routerService.pop(),
                  icon: const CircleAvatar(
                    child: Icon(
                      Icons.close,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: FutureBuilder(
                  future: controller?.getFlashStatus(),
                  builder: (context, snapshot) {
                    return IconButton(
                      onPressed: () {
                        if (controller != null) {
                          controller!.toggleFlash();
                        }
                      },
                      icon: snapshot.data == false
                          ? const Icon(
                              Icons.lightbulb_outline,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.lightbulb_outline,
                              color: Colors.blue,
                            ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildQrView(BuildContext context, BusinessHomeViewModel model) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 250.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: (controller) {
        _onQRViewCreated(controller, model);
      },
      overlay: QrScannerOverlayShape(
          borderColor: const Color(0xFF375778),
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  void scanToLogin({required String? result}) {
    if (result != null && result.contains('-')) {
      // haptic feedback for a user to know we have got the scan result
      HapticFeedback.lightImpact();
      showToast(context, 'Login success');
      final split = result.split('-');
      if (split.length > 1 && split[0] == 'login') {
        /// send the login detail to pubnub
        int userId = ProxyService.box.getUserId()!;
        int businessId = ProxyService.box.getBusinessId()!;
        int branchId = ProxyService.box.getBranchId()!;
        String phone = ProxyService.box.getUserPhone()!;
        int defaultApp = ProxyService.box.getDefaultApp();
        ProxyService.event.publish(loginDetails: {
          // this avoid users to log in to unintended device!
          'channel': split[1],
          'userId': userId,
          'businessId': businessId,
          'branchId': branchId,
          'phone': phone,
          'defaultApp': defaultApp
        });
      }
    }
  }

  void _onQRViewCreated(
      QRViewController controller, BusinessHomeViewModel model) {
    setState(() {
      this.controller = controller;
    });
    result = null;
    if (kDebugMode) {
      model.productService.setBarcode('11232532');
      navigate('11232532', model);
    }

    controller.scannedDataStream.first.then((scanData) {
      if (result == null) {
        setState(() async {
          result = scanData;
          if (widget.intent == addBarCode) {
            model.productService.setBarcode(scanData.code);
          }
          // split result on - if first part is login then
          // it is a login request
          scanToLogin(result: scanData.code);
          if (widget.intent == attendance) {
            // pull my bio data and asign them to the scan business.
            bool isCheckInDone =
                await ProxyService.isarApi.checkIn(checkInCode: scanData.code);
            if (isCheckInDone) {
              showSimpleNotification(
                const Text('Check In Successful'),
                background: Colors.green,
                position: NotificationPosition.bottom,
              );
              _routerService.pop();
            }
          }

          navigate(scanData.code, model);
        });
      }
    }).catchError((error) {
      // Handle the error here
    });
  }

  void navigate(String? code, BusinessHomeViewModel model) async {
    if (widget.intent == addBarCode) {
      _routerService.pop();
      return;
    }
    if (widget.intent == selling) {
      Product? product =
          await model.productService.getProductByBarCode(code: code);
      if (product != null) {
        _routerService.navigateTo(SellRoute(product: product));
        return;
      }
      showSimpleNotification(
        const Text("Product not found"),
        background: Colors.green,
        position: NotificationPosition.bottom,
      );
      _routerService.pop();
      return;
    }
    if (widget.intent == attendance) {
      return;
    }
    if (widget.intent == login) {
      return;
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
