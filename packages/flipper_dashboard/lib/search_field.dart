import 'package:flipper_dashboard/DesktopProductAdd.dart';
import 'package:flipper_dashboard/add_product_buttons.dart';
import 'package:flipper_dashboard/popup_modal.dart';
import 'package:flipper_models/view_models/product_viewmodel.dart';
import 'package:flipper_services/constants.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:stacked/stacked.dart';

class SearchField extends StatefulWidget {
  SearchField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late bool _hasText;
  @override
  void initState() {
    super.initState();
    _hasText = false;
    widget.controller.addListener(() {
      _hasText = widget.controller.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      viewModelBuilder: () => ProductViewModel(),
      builder: (a, model, b) {
        return TextFormField(
          controller: widget.controller,
          maxLines: null,
          textInputAction: TextInputAction.done,
          onChanged: (value) {
            _hasText = value.isNotEmpty;
          },
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
            ),
            // hintText: 'Search items here',
            prefixIcon: IconButton(
              onPressed: () {
                // Handle search functionality here
              },
              icon: Icon(FluentIcons.search_24_regular),
            ),
            suffixIcon: Wrap(
              children: [
                IconButton(
                  onPressed: () {
                    if (model.toggleScanningMode()) {
                      toast("Scanning mode Activated");
                    } else {
                      toast("Scanning mode DeActivated");
                    }
                  },
                  icon: Icon(
                    model.isScanningMode
                        ? FluentIcons.camera_switch_24_regular
                        : FluentIcons.camera_switch_24_regular,
                    color: model.isScanningMode ? Colors.green : Colors.blue,
                  ),
                ),
                IconButton(
                  onPressed: _hasText
                      ? () {
                          widget.controller.clear();
                          _hasText = false;
                        }
                      : () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => OptionModal(
                              child: isDesktopOrWeb
                                  ? ProductEntryScreen()
                                  : AddProductButtons(),
                            ),
                          );
                        },
                  icon: _hasText
                      ? Icon(FluentIcons.dismiss_24_regular)
                      : Icon(FluentIcons.add_20_regular),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
