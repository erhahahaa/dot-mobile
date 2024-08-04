import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CoachTacticalScreen extends StatefulWidget {
  final ClubModel club;
  const CoachTacticalScreen({super.key, required this.club});

  @override
  State<CoachTacticalScreen> createState() => _CoachTacticalScreenState();
}

class _CoachTacticalScreenState extends State<CoachTacticalScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TacticalCubit, TacticalState>(
      builder: (context, state) {
        return Parent(
          floatingActionButton: FloatingButtonExtended(
            onPressed: () => context.pushNamed(
              AppRoutes.coachCreateTactical.name,
              extra: {
                'route': 'tactical',
                'club': widget.club,
              },
            ),
            icon: const Icon(Icons.add),
            text: 'New Tactics',
            isDisabled: state.state == BaseState.loading,
            isLoading: state.state == BaseState.loading,
          ),
          body: ClippedLeftRoundedRightBackground(
            title: widget.club.name,
            child: RefreshIndicator(
              onRefresh: () =>
                  context.read<TacticalCubit>().init(clubId: widget.club.id),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const H1Text('Tactics'),
                    SizedBox(height: 8.h),
                    ListTactical(
                      tacticals: state.filteredTacticals,
                      isLoading: state.state == BaseState.loading,
                      club: widget.club,
                      isCoach: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
