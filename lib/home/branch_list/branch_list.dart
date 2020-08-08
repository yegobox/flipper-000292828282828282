import 'package:flipper/domain/redux/app_state.dart';
import 'package:flipper/presentation/home/common_view_model.dart';
import 'package:flipper/routes/router.gr.dart';
import 'package:flipper/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class BranchList extends StatefulWidget {
  final CommonViewModel vm;
  BranchList({Key key, this.vm}) : super(key: key);

  @override
  _BranchListState createState() => _BranchListState();
}

class _BranchListState extends State<BranchList> {
  String _value;

  String _scanBarcode;

  // ignore: non_constant_identifier_names
  DropdownButton _BranchItem() => DropdownButton<String>(
        isDense: true,
        hint: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            widget.vm.hint.name,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontStyle: FontStyle.normal,
              color: AppTheme.branchList.accentColor,
              fontSize: AppTheme.branchList.textTheme.bodyText1.fontSize,
            ),
          ),
        ),
        items: widget.vm.branches.map((b) {
          return DropdownMenuItem(
            value: b.id.toString(),
            child: Row(
              children: <Widget>[
                SvgPicture.asset(
                  'assets/graphics/arrow-up-right.svg',
                  allowDrawingOutsideViewBox: true,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  b.name,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
        isExpanded: true,
      );

  Future<void> desktopLogin({BuildContext context, String code}) async {
    final store = StoreProvider.of<AppState>(context);
    final response = await http.post('https://flipper.rw/api/ws', body: {
      'code': code,
      'token': store.state.user.token
    }, headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
      'Authorization': 'Bearer  ${store.state.user.token}',
    });
  }

  Future<void> scanQR(BuildContext context) async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
      desktopLogin(context: context, code: barcodeScanRes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 237,
        child: Center(
          child: Wrap(
            children: <Widget>[
              Container(
                height: 46,
              ),
              _BranchItem(),
              ListTile(
                leading: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Checkout',
                    style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: AppTheme.branchList.accentColor,
                      fontSize:
                          AppTheme.branchList.textTheme.bodyText1.fontSize,
                    ),
                  ),
                ),
                dense: true,
              ),
              ListTile(
                leading: FlatButton(
                  onPressed: () {
                    Router.navigator.pushNamed(Router.reportScreen);
                  },
                  child: Text(
                    'Report',
                    style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: AppTheme.branchList.accentColor,
                      fontSize:
                          AppTheme.branchList.textTheme.bodyText1.fontSize,
                    ),
                  ),
                ),
                dense: true,
              ),
              ListTile(
                leading: FlatButton(
                  onPressed: () {
                    Router.navigator.pushNamed(Router.allItemScreen);
                  },
                  child: Text(
                    'Items  ',
                    style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: AppTheme.branchList.accentColor,
                      fontSize:
                          AppTheme.branchList.textTheme.bodyText1.fontSize,
                    ),
                  ),
                ),
                dense: true,
              ),
              SizedBox(
                height: 425,
              ),
              FlatButton(
                onPressed: () {
                  scanQR(context);
                },
                child: Text(
                  'Desktop login',
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    color: AppTheme.branchList.accentColor,
                    fontSize: AppTheme.branchList.textTheme.bodyText1.fontSize,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class _Style {
  static const fontFamily = 'Heboo-Regular';
}
