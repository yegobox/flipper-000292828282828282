import 'package:collection/collection.dart';
import 'package:flipper_models/realm_model_export.dart';
import 'package:flipper_models/view_models/mixins/riverpod_states.dart';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flipper_routing/app.locator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySelector extends StatefulHookConsumerWidget {
  CategorySelector({Key? key, this.modeOfOperation = 'product'})
      : super(key: key);
  CategorySelector.transactionMode(
      {Key? key, this.modeOfOperation = 'transaction'})
      : super(key: key);
  final String modeOfOperation;

  @override
  CategorySelectorState createState() => CategorySelectorState();
}

class CategorySelectorState extends ConsumerState<CategorySelector> {
  final _routerService = locator<RouterService>();

  Widget text(
      {required BuildContext context,
      required AsyncValue<List<Category>> categories}) {
    return categories.when(
      data: (categories) {
        final focused =
            categories.firstWhereOrNull((category) => category.focused);
        if (focused == null) {
          return Text(
            'Select Category',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          );
        } else {
          return Text(
            focused.name!,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.black),
          );
        }
      },
      loading: () => const Padding(
        padding: EdgeInsets.only(top: 28.0),
        child: Center(child: Text("Loading...")),
      ),
      error: (error, stackTrace) => Column(
        children: [
          const SizedBox(height: 20),
          Center(child: Text('Errors: $error')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = ref.watch(categoryStreamProvider);

    return GestureDetector(
      onTap: () => _routerService.navigateTo(
        ListCategoriesRoute(modeOfOperation: widget.modeOfOperation),
      ),
      child: widget.modeOfOperation == 'product'
          ? Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: SingleChildScrollView(
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0.3),
                  leading: Text(
                    'Category',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: _buildTrailing(categories, context),
                ),
              ),
            )
          : _buildTrailing(categories, context),
    );
  }

  Widget _buildTrailing(
    AsyncValue<List<Category>> categories,
    BuildContext context,
  ) {
    return Wrap(
      children: [
        text(categories: categories, context: context),
        Theme(
          data: ThemeData(
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
          ),
          child: const Icon(FluentIcons.arrow_forward_20_regular),
        ),
      ],
    );
  }
}
