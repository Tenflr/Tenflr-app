import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class ProgressOverlayIndicator extends StatelessWidget {
  final String overLayText;
  final bool isSaving;
  final double height;
  const ProgressOverlayIndicator({
    Key key,
    @required this.isSaving,
    this.overLayText = 'Saving',
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.5) : Colors.transparent,
        width: size.width,
        height: height ?? size.height,
        child: Visibility(
          visible: isSaving,
          child: Container(
            margin: EdgeInsets.all(size.width * 0.2),
            child: const FlareActor(
              'assets/flare/loading.flr',
              fit: BoxFit.contain,
              animation: 'Untitled',
            ),
          ),
        ),
      ),
    );
  }
}
