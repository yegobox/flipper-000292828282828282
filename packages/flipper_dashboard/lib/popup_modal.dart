// import 'package:flutter/material.dart';
import 'custom_rect_tween.dart';
import 'package:fluent_ui/fluent_ui.dart';

const String addProductHero = 'addProductHero';

/// Popup card to add a new [Todo]. Should be used in conjuction with
/// [HeroDialogRoute] to achieve the popup effect.
///
/// Uses a [Hero] with tag [OptionModal].

class OptionModal extends StatelessWidget {
  const OptionModal({Key? key, required this.child}) : super(key: key);
  final Widget child;
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
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ),
    );
  }
}
