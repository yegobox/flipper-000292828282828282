import 'package:flutter/material.dart';

class MiniAppIcon extends StatelessWidget {
  const MiniAppIcon(
      {super.key,
      required this.icon,
      required this.gradientColorOne,
      required this.gradientColorTwo,
      required this.page,
      this.showPageName = true,
      this.sideSize = 59.0});

  final IconData icon;
  final Color gradientColorOne;
  final Color gradientColorTwo;
  final double sideSize;
  final String page;
  final bool showPageName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 72.0,
          width: 72.0,
          decoration: ShapeDecoration(
              shape: ContinuousRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(80.0)),
              color: gradientColorOne,
              shadows: []),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Visibility(
            visible: showPageName,
            child: Text(
              page,
            ),
          ),
        )
      ],
    );
  }
}
