import 'package:flutter/material.dart';

class ReceiveStock extends StatelessWidget {
  const ReceiveStock({Key? key, required this.variantId}) : super(key: key);
  final String variantId;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('receive Stock'),
    );
  }
}
