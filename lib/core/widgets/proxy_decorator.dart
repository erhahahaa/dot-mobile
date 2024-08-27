import 'dart:ui';

import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class ProxyDecorator extends StatelessWidget {
  final Widget child;
  final int index;
  final Animation<double> animation;
  const ProxyDecorator({
    super.key,
    required this.child,
    required this.index,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        final double animValue = Curves.easeInOut.transform(animation.value);
        final double elevation = lerpDouble(0, 6, animValue)!;
        return Material(
          elevation: elevation,
          color: context.theme.colorScheme.surface,
          shadowColor: context.theme.colorScheme.surface,
          child: child,
        );
      },
      child: child,
    );
  }
}
