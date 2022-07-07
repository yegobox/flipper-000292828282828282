// import 'package:flipper_models/view_models/pos_viewmodel.dart';
import 'dart:developer';

import 'package:flipper_localize/flipper_localize.dart';
import 'package:flutter/material.dart';
import 'package:number_display/number_display.dart';
//

class PayableView extends StatelessWidget {
  const PayableView(
      {Key? key,
      this.tickets = 0,
      this.duePay = 0,
      this.orders = 0,
      required this.onClick,
      required this.ticketHandler})
      : super(key: key);
  final double tickets;
  final int orders;
  final double? duePay;
  final Function onClick;
  final Function ticketHandler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19.0, 0, 19.0, 30.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: SizedBox(
            height: 64,
            child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xffF2F2F2)),
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
                  ticketHandler();
                },
                child: ticketText(
                    tickets: tickets.toInt(),
                    orders: orders,
                    context: context)),
          )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: SizedBox(
            height: 64,
            child: OutlinedButton(
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
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {
                  onClick();
                },
                child: callCharge(
                  payable: duePay ?? 0.00,
                  context: context,
                )),
          ))
        ],
      ),
    );
  }

  Widget ticketText(
      {required int tickets,
      required int orders,
      required BuildContext context}) {
    log("ticketText:" + tickets.toString());
    if (tickets > 0 || orders == 0) {
      return Text(
        FLocalization.of(context).tickets,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      );
    } else if (orders > 0) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            FLocalization.of(context).save,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            orders.toString() + ' New Item' + (tickets > 1 ? 's' : ''),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          )
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget callCharge({required double payable, required BuildContext context}) {
    final display = createDisplay(
      length: 8,
      decimal: 4,
    );
    if (payable == 0.0) {
      return Text(
        FLocalization.of(context).charge + ' FRW ' + payable.toString(),
        style: const TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            FLocalization.of(context).charge,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'FRw' + display(payable).toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      );
    }
  }
}
