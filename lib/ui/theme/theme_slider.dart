import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'theme_card.dart';
import 'theme_colors.dart';
import 'theme_constants.dart';
import 'theme_text.dart';

class ThemeSlider extends StatefulWidget {
  final double value;

  final double minValue;
  final double maxValue;

  final int? divisions;

  final Function(double value)? onChanged;

  final bool highlight;
  final bool showLabel;

  final String Function(double value) valueToString;

  final Color accentColor;

  ThemeSlider(
      {required this.minValue,
      required this.maxValue,
      required this.value,
      required this.valueToString,
      this.onChanged,
      this.divisions,
      this.highlight = true,
      this.showLabel = true,
      this.accentColor = ThemeColors.primaryColor,
      Key? key})
      : super(key: key);

  @override
  _ThemeSliderState createState() => _ThemeSliderState();
}

class _ThemeSliderState extends State<ThemeSlider> {
  @override
  void initState() {
    super.initState();

/*     value = widget.value;

    if (widget.value == null) {
      value = widget.minValue;
    }
    if (widget.value > widget.maxValue) {
      value = widget.maxValue;
    }
    if (widget.value < widget.minValue) {
      value = widget.minValue;
    } */
  }

  @override
  Widget build(BuildContext context) {
    SliderTrackShape sliderTrackShape = RoundedRectSliderTrackShape();

    return Material(
      color: Colors.transparent,
      child: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light(
            primary: widget.accentColor,
          ),
          primaryColor: widget.accentColor,
        ),
        child: SliderTheme(
          data: SliderTheme.of(context).copyWith(
              trackHeight: 2,
              trackShape: sliderTrackShape,
              activeTrackColor:
                  (widget.highlight) ? widget.accentColor : Colors.grey,
              thumbColor: (widget.highlight) ? widget.accentColor : Colors.grey,
              inactiveTrackColor: Colors.grey,
              overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0),
              tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 3),
              inactiveTickMarkColor: Colors.grey,
              activeTickMarkColor: widget.accentColor,
              valueIndicatorShape: (widget.showLabel)
                  ? PaddleSliderValueIndicatorShape()
                  : SliderComponentShape.noOverlay),
          child: Slider(
            label: widget.valueToString(widget.value),
            value: widget.value,
            min: widget.minValue,
            max: widget.maxValue,
            divisions: widget.divisions ??
                ((widget.maxValue - widget.minValue) * 100).toInt(),
            onChanged: (double _value) {
              if (widget.onChanged != null) {
                widget.onChanged!(_value);
              }
            },
          ),
        ),
      ),
    );
  }
}

class ThemeSelectionSlider<T> extends StatefulWidget {
  final Map<T, String> items;
  final Function(T selected)? onChanged;
  final T initialSelected;

  ThemeSelectionSlider(
      {required this.items,
      required this.initialSelected,
      required this.onChanged,
      Key? key})
      : super(key: key);

  @override
  _ThemeSelectionSliderState<T> createState() =>
      _ThemeSelectionSliderState<T>();
}

class _ThemeSelectionSliderState<T> extends State<ThemeSelectionSlider<T>> {
  late T selected;

  @override
  void initState() {
    super.initState();
    selected = widget.initialSelected;
  }

  @override
  Widget build(BuildContext context) {
    List<T> keys = widget.items.keys.toList();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        children: [
          SliderLabelRow<T>(
            items: widget.items,
            isEven: false,
            selected: [selected],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: ThemeSlider(
                minValue: 0,
                maxValue: keys.length.toDouble() - 1,
                value: keys.indexOf(selected).toDouble(),
                divisions: keys.length - 1,
                valueToString: (value) {
                  return widget.items[keys[value.toInt()]] ?? '';
                },
                highlight: true,
                showLabel: false,
                onChanged: (value) {
                  setState(() {
                    selected = keys[value.toInt()];
                  });
                  widget.onChanged!(selected);
                }),
          ),
          SliderLabelRow<T>(
            items: widget.items,
            isEven: true,
            selected: [selected],
          ),
        ],
      ),
    );
  }
}

/* class ThemeSelectionSlider<T> extends StatelessWidget {

} */

class SliderLabelRow<T> extends StatelessWidget {
  final Map<T, String> items;
  final List<T> selected;
  final bool isEven;

  const SliderLabelRow(
      {required this.items,
      this.selected = const [],
      this.isEven = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> visibleIndex = List<int>.generate(items.keys.length, (i) => i)
        .where((element) => element.isEven == isEven)
        .toList();

    return LayoutBuilder(builder: (_, constraints) {
      double labelCount = (items.keys.length / 2).ceil().toDouble();
      double labelWidth = (constraints.maxWidth) / labelCount;

      return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        if (!isEven)
          SizedBox(
            width: labelWidth * 0.5,
          ),
        ...visibleIndex
            .map((e) => Container(
                width: labelWidth,
                alignment: Alignment((e) / (items.keys.length - 1) * 2 - 1, 0),
                child: SmallItem(
                  selected: (selected.contains(items.keys.toList()[e])),
                  item: items.values.toList()[e],
                )))
            .toList(),
        if (!isEven)
          SizedBox(
            width: labelWidth * 0.5,
          ),
      ]);
    });
  }
}

class SmallItem extends StatelessWidget {
  const SmallItem(
      {Key? key, required this.selected, required this.item, this.onTap})
      : super(key: key);

  final bool selected;
  final String item;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        onTap?.call();
      },
      child: ThemeCard(
          dropShadow: false,
          backgroundColor:
              (selected) ? ThemeColors.primaryColor : Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
            child: ThemeBodySText(
              item,
              textColor: (selected)
                  ? ThemeColors.secondaryTextColor(context)
                  : ThemeColors.primaryTextColor(context),
              maxLines: 1,
            ),
          )),
    );
  }
}
