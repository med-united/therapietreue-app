import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';
import 'theme_slider.dart';

class ThemeRangeSlider extends StatefulWidget {
  final double? minSelectedValue;
  final double? maxSelectedValue;

  final double minValue;
  final double maxValue;

  final int? divisions;

  final Function(double minSelectedValue, double maxSelectedValue)? onChanged;
  final bool highlightTrack;
  final bool showLabel;

  final bool invert;

  final String Function(double value) valueToString;
  ThemeRangeSlider(
      {this.minSelectedValue,
      this.maxSelectedValue,
      required this.minValue,
      required this.maxValue,
      required this.onChanged,
      required this.divisions,
      this.highlightTrack = true,
      this.showLabel = true,
      this.invert = false,
      required this.valueToString,
      Key? key})
      : super(key: key);

  @override
  _ThemeRangeSliderState createState() => _ThemeRangeSliderState();
}

class _ThemeRangeSliderState extends State<ThemeRangeSlider> {
  double get _minSelectedValue =>
      ((widget.invert) ? widget.maxSelectedValue : widget.minSelectedValue) ??
      widget.minValue;
  double get _maxSelectedValue =>
      ((widget.invert) ? widget.minSelectedValue : widget.maxSelectedValue) ??
      widget.maxValue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SliderTrackShape sliderTrackShape = RoundedRectSliderTrackShape();

    return Material(
      color: Colors.transparent,
      child: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light(
            primary: ThemeColors.primaryColor,
          ),
          primaryColor: ThemeColors.primaryColor,
        ),
        child: SliderTheme(
          data: SliderTheme.of(context).copyWith(
              trackHeight: 2,
              trackShape: sliderTrackShape,
              thumbColor: (widget.highlightTrack)
                  ? ThemeColors.primaryColor
                  : Colors.grey,
              showValueIndicator: (widget.showLabel)
                  ? ShowValueIndicator.always
                  : ShowValueIndicator.never,
              activeTrackColor: (widget.highlightTrack)
                  ? (!widget.invert)
                      ? ThemeColors.primaryColor
                      : Colors.grey
                  : Colors.grey,
              inactiveTrackColor:
                  (widget.invert) ? ThemeColors.primaryColor : Colors.grey,
              overlayShape: RoundSliderOverlayShape(overlayRadius: 8.0),
              rangeTickMarkShape:
                  RoundRangeSliderTickMarkShape(tickMarkRadius: 3),
              inactiveTickMarkColor:
                  (widget.invert) ? ThemeColors.primaryColor : Colors.grey,
              activeTickMarkColor: (widget.highlightTrack)
                  ? (!widget.invert)
                      ? ThemeColors.primaryColor
                      : Colors.grey
                  : Colors.grey,
              rangeTrackShape: RectangularRangeSliderTrackShape(),
              rangeValueIndicatorShape: PaddleRangeSliderValueIndicatorShape()),
          child: RangeSlider(
            labels: RangeLabels(widget.valueToString(_minSelectedValue),
                widget.valueToString(_maxSelectedValue)),
            min: widget.minValue,
            max: widget.maxValue,
            divisions: widget.divisions ??
                ((widget.maxValue - widget.minValue) * 100).toInt(),
            onChanged: (RangeValues _rangeValue) {
              /*        setState(() {
                _minSelectedValue = _rangeValue.start;
                _maxSelectedValue = _rangeValue.end;
              });
 */
              if (widget.onChanged != null) {
                if (widget.invert) {
                  widget.onChanged!(_rangeValue.end, _rangeValue.start);
                } else {
                  widget.onChanged!(_rangeValue.start, _rangeValue.end);
                }
              }
            },
            values: RangeValues(_minSelectedValue, _maxSelectedValue),
          ),
        ),
      ),
    );
  }
}

class ThemeSelectionRangeSlider<T> extends StatefulWidget {
  final Map<T, String> items;
  final Function(List<T> selected)? onChanged;
  final List<T>? initialSelected;
  final bool disableSelection;

  ThemeSelectionRangeSlider(
      {required this.items,
      required this.initialSelected,
      required this.onChanged,
      this.disableSelection = false,
      Key? key})
      : super(key: key);

  @override
  _ThemeSelectionRangeSliderState<T> createState() =>
      _ThemeSelectionRangeSliderState<T>();
}

class _ThemeSelectionRangeSliderState<T>
    extends State<ThemeSelectionRangeSlider<T>> {
  List<T> get selected => widget.initialSelected ?? [];

  @override
  void initState() {
    super.initState();
    log("selected: $selected");
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
            selected: (widget.disableSelection) ? [] : selected,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: ThemeRangeSlider(
                minValue: 0,
                maxValue: keys.length.toDouble() - 1,
                minSelectedValue: (selected.length > 0)
                    ? selected
                        .map((e) => keys.indexOf(e))
                        .reduce(min)
                        .toDouble()
                    : null,
                maxSelectedValue: (selected.length > 0)
                    ? selected
                        .map((e) => keys.indexOf(e))
                        .reduce(max)
                        .toDouble()
                    : null,
                divisions: keys.length - 1,
                valueToString: (value) {
                  return widget.items[keys[value.toInt()]] ?? '';
                },
                highlightTrack: !widget.disableSelection,
                showLabel: false,
                onChanged: (min, max) {
                  widget.onChanged!(keys.sublist(min.toInt(), max.toInt() + 1));
                }),
          ),
          SliderLabelRow<T>(
            items: widget.items,
            isEven: true,
            selected: (widget.disableSelection) ? [] : selected,
          ),
        ],
      ),
    );
  }

  void log(String msg) {
    print("ThemeRangeSlider: $msg");
  }
}
