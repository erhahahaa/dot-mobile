import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/extensions/context.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AthleteListTacticalScreen extends StatelessWidget {
  const AthleteListTacticalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: Center(
        child: Text(
          "Athlete List Tactical Screen",
          style: context.theme.textTheme.titleLarge,
        ),
      ),
    );
  }
}
