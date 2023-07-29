import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MiniAppIcon extends StatelessWidget {
  const MiniAppIcon(
      {super.key,
      required this.icon,
      required this.gradientColorOne,
      required this.gradientColorTwo,
      required this.page,
      this.showPageName = true,
      this.sideSize = 72.0});

  final dynamic icon;
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
          height: sideSize,
          width: sideSize,
          decoration: ShapeDecoration(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            color: gradientColorOne,
          ),
          child: Center(
            child: (icon is IconData) ? Icon(
              icon,
              color: Colors.white,
            ):SvgPicture.asset(icon,package: 'flipper_dashboard',),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Visibility(
            visible: showPageName,
            child: Text(page, style: GoogleFonts.poppins(fontSize: 13)),
          ),
        )
      ],
    );
  }
}
