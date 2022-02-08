import 'package:flipper_models/models/models.dart';
import 'package:flutter/widgets.dart';

import 'keypad_view.dart';
import 'responsive_page.dart';
import 'unversal_scafold.dart';

class Dashboard extends StatelessWidget {
  final HeaderBuilder? headerBuilder;
  final double? headerMaxExtent;
  final SideBuilder? sideBuilder;
  final TextDirection? desktopLayoutDirection;
  final String? email;
  final bool? showAuthActionSwitch;
  final Key? loginViewKey;
  final double breakpoint;
  final BusinessHomeViewModel model;

  const Dashboard({
    Key? key,
    this.headerBuilder,
    this.headerMaxExtent = defaultHeaderImageHeight,
    this.sideBuilder,
    this.desktopLayoutDirection = TextDirection.ltr,
    this.email,
    this.showAuthActionSwitch,
    this.loginViewKey,
    required this.model,
    this.breakpoint = 800,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final center = ConstrainedBox(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 3.12),
      child: KeyPadView(model: model),
    );

    final body = ResponsivePage(
      breakpoint: breakpoint,
      desktopLayoutDirection: desktopLayoutDirection,
      headerBuilder: headerBuilder,
      headerMaxExtent: headerMaxExtent,
      sideBuilder: sideBuilder,
      child: center,
      contentFlex: 1,
    );
    return UniversalScaffold(
      body: body,
      resizeToAvoidBottomInset: false,
    );
  }
}
