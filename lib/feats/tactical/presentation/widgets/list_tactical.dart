import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListTactical extends StatelessWidget {
  final List<TacticalModel> tacticals;
  final bool isLoading;
  final ClubModel club;
  final bool isCoach;

  const ListTactical({
    super.key,
    required this.tacticals,
    required this.isLoading,
    required this.club,
    this.isCoach = false,
  });

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      child: _buildListTactical(context),
    );
  }

  Widget _buildListTactical(BuildContext context) {
    if (isLoading) {
      final fakeTactical =
          List.generate(9, (index) => TacticalModel.fake()).toList();

      return Skeletonizer(
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: fakeTactical.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return TacticalContainer(
              tactical: fakeTactical[index],
              club: club,
              isCoach: isCoach,
            );
          },
        ),
      );
    }

    if (tacticals.isEmpty) {
      return EightContainer(
        child: Center(
          child: Text(
            'No tacticals found',
            style: context.theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: tacticals.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return TacticalContainer(
          tactical: tacticals[index],
          club: club,
          isCoach: isCoach,
        );
      },
    );
  }
}
