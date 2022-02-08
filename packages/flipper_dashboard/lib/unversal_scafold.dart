import 'package:fluent_ui/fluent_ui.dart';

class UniversalScaffold extends StatelessWidget {
  const UniversalScaffold(
      {Key? key, required this.body, this.resizeToAvoidBottomInset})
      : super(key: key);
  final Widget body;
  final bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: body,
    );
  }
}
