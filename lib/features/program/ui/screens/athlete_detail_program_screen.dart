import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailProgramScreen extends StatelessWidget {
  final int programId;
  const DetailProgramScreen({
    super.key,
    required this.programId,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
