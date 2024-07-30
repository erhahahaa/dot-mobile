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
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              context.pushNamed(
                AppRoutes.coachCreateExam.name,
                pathParameters: {
                  'clubId': club.id.toString(),
                },
              );
            },
            label: Row(
              children: [
                const Icon(Icons.add),
                SizedBox(width: 8.w),
                const Text('New Exam'),
              ],
            ),
          ),
          body: RoundedTopBackground(
            title: club.name,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const H1Text('Exams'),
                  SizedBox(height: 8.h),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    height: 380.h,
                    margin: EdgeInsets.only(bottom: 96.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.1),
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: state.exams.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final exam = state.exams[index];
                        return InkWell(
                          onTap: () => context.pushNamed(
                              AppRoutes.coachExamDetail.name,
                              pathParameters: {
                                'id': exam.id.toString()
                              },
                              extra: {
                                'exam': exam,
                              }),
                          child: Container(
                            padding: EdgeInsets.all(16.w),
                            margin: EdgeInsets.only(bottom: 8.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: context.theme.colorScheme.primaryContainer
                                  .withOpacity(0.1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  exam.title,
                                  style: context.theme.textTheme.titleMedium
                                      ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.sp,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
