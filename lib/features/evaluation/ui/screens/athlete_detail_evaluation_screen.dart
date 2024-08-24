import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailEvaluationScreen extends StatelessWidget {
  final int evaluationId;
  const DetailEvaluationScreen({
    super.key,
    required this.evaluationId,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
