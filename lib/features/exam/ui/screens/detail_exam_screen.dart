import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailExamScreen extends StatelessWidget {
  final int id;
  const DetailExamScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
