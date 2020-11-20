import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListWheelScrollViewX extends StatelessWidget {
  // final Widget Function(BuildContext, int) builder;
  final Axis scrollDirection;
  final FixedExtentScrollController controller;
  final double itemExtent;
  final double diameterRatio;
  final List<Widget> children;
  final void Function(int) onSelectedItemChanged;
  const ListWheelScrollViewX({
    Key key,
    // @required this.builder,
    @required this.itemExtent,
    this.children,
    this.controller,
    this.onSelectedItemChanged,
    this.scrollDirection = Axis.vertical,
    this.diameterRatio = 100000,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: scrollDirection == Axis.horizontal ? 3 : 0,
      child: ListWheelScrollView(
        children: children,
        //  useMagnifier: true,
        // magnification: 1.04,
        onSelectedItemChanged: onSelectedItemChanged,
        controller: controller,
        offAxisFraction: 0.2,
        itemExtent: itemExtent,
        diameterRatio: diameterRatio,
        
        // squeeze: 5,
        physics: const FixedExtentScrollPhysics(),
        // childDelegate: ListWheelChildBuilderDelegate(
        //   builder: (context, index) {
        //     return RotatedBox(
        //       quarterTurns: scrollDirection == Axis.horizontal ? 1 : 0,
        //       child: builder(context, index),
        //     );
        //   },
        // ),
      ),
    );
  }
}
