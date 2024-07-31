import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ExamScreen extends StatelessWidget {
  final ClubModel club;
  const ExamScreen({super.key, required this.club});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExamCubit, ExamState>(
      builder: (context, state) {
        return Parent(
          floatingActionButton: FloatingButtonExtended(
            onPressed: () => context.pushNamed(
              AppRoutes.coachCreateExam.name,
              extra: {
                'club': club,
              },
            ),
            icon: const Icon(Icons.add),
            text: context.str?.newExam ?? 'New Exam',
            isDisabled: state.state == BaseState.loading,
            isLoading: state.state == BaseState.loading,
          ),
          body: RoundedTopBackground(
            title: club.name,
            child: RefreshIndicator(
              onRefresh: () => context.read<ExamCubit>().init(
                    clubId: club.id,
                  ),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const H1Text('Exams'),
                    SizedBox(height: 8.h),
                    ListExam(
                      exams: state.filteredExams,
                      isCoach: true,
                      isLoading: state.state == BaseState.loading,
                      club: club,
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
