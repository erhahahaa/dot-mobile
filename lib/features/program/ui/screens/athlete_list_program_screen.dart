import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AthleteListProgramScreen extends StatelessWidget {
  final int clubId;

  const AthleteListProgramScreen({
    super.key,
    @pathParam required this.clubId,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
