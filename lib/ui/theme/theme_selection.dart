import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'theme_card.dart';
import 'theme_colors.dart';
import 'theme_constants.dart';
import 'theme_text.dart';

class ThemeSelection<T> extends StatelessWidget {
  final bool singleSelection;
  final Map<T, String> items;
  final List<T> selected;
  final Function(List<T> selected)? onChanged;
  final Widget Function(T item, bool selected, void Function() onClick)?
      itemBuilder;

  final bool highlighted;

  const ThemeSelection(
      {required this.items,
      required this.selected,
      this.onChanged,
      this.itemBuilder,
      this.singleSelection = false,
      this.highlighted = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: items.keys
          .toList()
          .map((T e) => (itemBuilder != null)
              ? itemBuilder!(e, selected.contains(e), () {
                  List<T> _selected = [];
                  if (singleSelection) {
                    _selected.add(e);
                  } else {
                    _selected.addAll(selected);
                    if (_selected.contains(e)) {
                      _selected.remove(e);
                    } else {
                      _selected.add(e);
                    }
                  }

                  var distinctSelected = [
                    ...{..._selected}
                  ];

                  if (onChanged != null) {
                    onChanged!(distinctSelected);
                  }
                })
              : ThemeSelectionItem(
                  highlighted: highlighted,
                  title: items[e]!,
                  selected: selected.contains(e),
                  horizontalPadding: true,
                  onClick: () {
                    List<T> _selected = [];
                    if (singleSelection) {
                      _selected.add(e);
                    } else {
                      _selected.addAll(selected);
                      if (_selected.contains(e)) {
                        _selected.remove(e);
                      } else {
                        _selected.add(e);
                      }
                    }
                    if (onChanged != null) {
                      onChanged!(_selected);
                    }
                  }))
          .toList(),
    );
  }
}

class ThemeSelectionItem extends StatelessWidget {
  final String title;
  final bool selected;
  final bool highlighted;
  final bool horizontalPadding;
  final Function()? onClick;
  final Color accentColor;

  ThemeSelectionItem(
      {required this.title,
      this.selected = false,
      this.horizontalPadding = true,
      this.highlighted = true,
      this.accentColor = ThemeColors.primaryColor,
      this.onClick,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeCard(
        margin: const EdgeInsets.only(left: 4, right: 4, bottom: 2, top: 2),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onClick,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (horizontalPadding) ? 8.0 : 0.0),
            height: 28,
            color: (selected)
                ? ((highlighted) ? accentColor : ThemeColors.disabledColor)
                : ThemeColors.lightPrimaryBackgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: ThemeBodyMText(
                    title,
                    textColor: (selected)
                        ? ThemeColors.lightPrimaryBackgroundColor
                        : ThemeColors.primaryTextColor(context),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
