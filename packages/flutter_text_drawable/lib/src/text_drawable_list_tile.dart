import 'package:flutter/material.dart';
import 'package:flutter_text_drawable/flutter_text_drawable.dart';

class TextDrawableListTile extends StatefulWidget {
  /// [TextDrawableListTile] wraps around the material [ListTile]
  /// and intercepts it's onLongPressed callback to provide give animations to
  /// the leading [TextDrawable] widget.
  const TextDrawableListTile({
    Key? key,
    required this.drawableText,
    required this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine = false,
    this.dense,
    this.contentPadding,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.selected = false,
  })  : assert(isThreeLine != null),
        assert(enabled != null),
        assert(selected != null),
        assert(!isThreeLine || subtitle != null),
        assert(drawableText is String),
        super(key: key);

  /// The string you wish to display in the leading [TextDrawable].
  /// Only the first character is displayed.
  ///
  /// Must be a [String].
  final String drawableText;

  /// The primary content of the list tile.
  ///
  /// Typically a [Text] widget.
  ///
  /// This should not wrap.
  final Widget title;

  /// Additional content displayed below the title.
  ///
  /// Typically a [Text] widget.
  ///
  /// If [isThreeLine] is false, this should not wrap.
  ///
  /// If [isThreeLine] is true, this should be configured to take a maximum of
  /// two lines.
  final Widget? subtitle;

  /// A widget to display after the title.
  ///
  /// Typically an [Icon] widget.
  ///
  /// To show right-aligned metadata (assuming left-to-right reading order;
  /// left-aligned for right-to-left reading order), consider using a [Row] with
  /// [MainAxisAlign.baseline] alignment whose first item is [Expanded] and
  /// whose second child is the metadata text, instead of using the [trailing]
  /// property.
  final Widget? trailing;

  /// Whether this list tile is intended to display three lines of text.
  ///
  /// If true, then [subtitle] must be non-null (since it is expected to give
  /// the second and third lines of text).
  ///
  /// If false, the list tile is treated as having one line if the subtitle is
  /// null and treated as having two lines if the subtitle is non-null.
  final bool isThreeLine;

  /// Whether this list tile is part of a vertically dense list.
  ///
  /// If this property is null then its value is based on [ListTileTheme.dense].
  ///
  /// Dense list tiles default to a smaller height.
  final bool? dense;

  /// The tile's internal padding.
  ///
  /// Insets a [ListTile]'s contents: its [leading], [title], [subtitle],
  /// and [trailing] widgets.
  ///
  /// If null, `EdgeInsets.symmetric(horizontal: 16.0)` is used.
  final EdgeInsetsGeometry? contentPadding;

  /// Whether this list tile is interactive.
  ///
  /// If false, this list tile is styled with the disabled color from the
  /// current [Theme] and the [onTap] and [onLongPress] callbacks are
  /// inoperative.
  final bool enabled;

  /// Called when the user taps this list tile.
  ///
  /// Inoperative if [enabled] is false.
  final GestureTapCallback? onTap;

  /// Called when the user long-presses on this list tile.
  ///
  /// Inoperative if [enabled] is false.
  final GestureLongPressCallback? onLongPress;

  /// If this tile is also [enabled] then icons and text are rendered with the same color.
  ///
  /// By default the selected color is the theme's primary color. The selected color
  /// can be overridden with a [ListTileTheme].
  /// If set to `true` long press events will not have any effect.
  final bool selected;

  @override
  _TextDrawableListTileState createState() => _TextDrawableListTileState();
}

class _TextDrawableListTileState extends State<TextDrawableListTile> {
  bool isSelected = false;

  Widget createLeading(bool sel) {
    return TextDrawable(
      text: widget.drawableText[0],
      isSelected: sel,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: widget.contentPadding,
      dense: widget.dense,
      enabled: widget.enabled,
      isThreeLine: widget.isThreeLine,
      key: widget.key,
      leading: TextDrawable(
        text: widget.drawableText[0],
        isSelected: widget.selected || isSelected,
        isTappable: true,
      ),
      onLongPress: () {
        if (widget.enabled) {
          setState(() {
            isSelected = !isSelected;
          });
          if (widget.onTap != null) widget.onLongPress!();
        }
      },
      onTap: () {
        if (widget.enabled) {
          if (isSelected) {
            setState(() {
              isSelected = !isSelected;
            });
          } else {
            if (widget.onTap != null) widget.onTap!();
          }
        }
      },
      selected: widget.selected || isSelected,
      subtitle: widget.subtitle,
      title: widget.title,
      trailing: widget.trailing,
    );
  }
}
