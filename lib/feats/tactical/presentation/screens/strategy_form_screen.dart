import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';

class StrategyFormScreen extends StatelessWidget {
  final TacticalModel tactical;

  const StrategyFormScreen({
    super.key,
    required this.tactical,
  });

  @override
  Widget build(BuildContext context) {
    return const Parent(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1Text('Strategy Form'),
        ],
      ),
    );
  }
}
