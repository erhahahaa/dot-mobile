import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.pushNamed(AppRoutes.coachCreateClub.name),
        label: Row(
          children: [
            const Icon(Icons.add),
            SizedBox(width: 8.w),
            const Text('Create Club'),
          ],
        ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => context.read<ClubCubit>().init(),
          child: Padding(
            padding: EdgeInsets.all(8.h),
            child: BlocBuilder<ClubCubit, ClubState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const H1Text('Overview'),
                    SizedBox(height: 8.h),
                    ClubOverviewCard(
                      clubsCount: state.clubs.length,
                      membersCount: state.clubs.sumTotalMembers(),
                      programsCount: state.clubs.sumTotalPrograms(),
                      examsCount: state.clubs.sumTotalExams(),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const H1Text("Clubs"),
                        SizedBox(width: 8.w),
                        const SearchClub()
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Expanded(
                      child: ListClub(
                        clubs: state.filteredClubs,
                        padding: EdgeInsets.all(16.w),
                        isCoach: true,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
