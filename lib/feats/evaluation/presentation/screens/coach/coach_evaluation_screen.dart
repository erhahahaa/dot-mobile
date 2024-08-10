import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CoachEvaluationScreen extends StatefulWidget {
  final ClubModel club;
  const CoachEvaluationScreen({super.key, required this.club});

  @override
  State<CoachEvaluationScreen> createState() => _CoachEvaluationScreenState();
}

class _CoachEvaluationScreenState extends State<CoachEvaluationScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<EvaluationCubit>().getEvaluations(
          context.read<ExamCubit>().state.exams.map((e) => e.id).toList(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Parent(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
          title: const Text('Evaluation'),
          bottom: TabBar(
            tabs: const [
              Tab(text: 'Athlete'),
              Tab(text: 'History'),
            ],
            onTap: (index) {
              if (index == 1) {
                context.read<EvaluationCubit>().getEvaluations(
                      context
                          .read<ExamCubit>()
                          .state
                          .exams
                          .map((e) => e.id)
                          .toList(),
                    );
              }
            },
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            BlocBuilder<ClubCubit, ClubState>(
              builder: (context, state) {
                return RefreshIndicator(
                  onRefresh: () => context
                      .read<ClubCubit>()
                      .getMembers(const PaginationParams(), widget.club.id),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.h),
                        Padding(
                          padding: EdgeInsets.all(8.w),
                          child: CustomSearchBar(
                            width: double.infinity,
                            height: 42.h,
                            onSearch: context.read<ClubCubit>().searchMember,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        ListMember(
                          members: state.filteredMembers,
                          clubId: widget.club.id,
                          isLoading: state.state == BaseState.loading,
                          evaluate: true,
                          club: widget.club,
                          padding: EdgeInsets.all(2.w),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            BlocBuilder<EvaluationCubit, EvaluationState>(
              builder: (context, state) {
                return RefreshIndicator(
                  onRefresh: () =>
                      context.read<EvaluationCubit>().getEvaluations(
                            context
                                .read<ExamCubit>()
                                .state
                                .exams
                                .map((e) => e.id)
                                .toList(),
                          ),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.h),
                        Padding(
                          padding: EdgeInsets.all(8.w),
                          child: CustomSearchBar(
                            width: double.infinity,
                            height: 42.h,
                            onSearch: context
                                .read<EvaluationCubit>()
                                .searchEvaluation,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        ListView.builder(
                          itemCount: state.filteredEvaluations.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                'Exam: ${state.filteredEvaluations[index].exam?.title}',
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Athlete: ${state.filteredEvaluations[index].athlete?.name}',
                                  ),
                                  Text(
                                    'Coach: ${state.filteredEvaluations[index].coach?.name}',
                                  ),
                                ],
                              ),
                              trailing: PopupMenuButton(
                                popUpAnimationStyle: AnimationStyle(
                                  curve: Easing.emphasizedDecelerate,
                                  duration: const Duration(milliseconds: 500),
                                ),
                                icon: const Icon(Icons.more_vert),
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(
                                      child: Row(
                                        children: [
                                          const Icon(Icons.remove_red_eye),
                                          const SizedBox(width: 8),
                                          Text(
                                            context.str?.detail ?? 'Detail',
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        context.pushNamed(
                                          AppRoutes
                                              .coachExamEvaluationDetail.name,
                                          pathParameters: {
                                            'id': state
                                                .filteredEvaluations[index].id
                                                .toString(),
                                          },
                                          extra: {
                                            'evaluation': state
                                                .filteredEvaluations[index],
                                            'club': widget.club,
                                          },
                                        );
                                      },
                                    ),
                                    PopupMenuItem(
                                      child: Row(
                                        children: [
                                          const Icon(Icons.edit),
                                          const SizedBox(width: 8),
                                          Text(
                                            context.str?.edit ?? 'Edit',
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        context.pushNamed(
                                          AppRoutes
                                              .coachEditExamEvaluation.name,
                                          extra: {
                                            'user': state
                                                .filteredEvaluations[index]
                                                .athlete,
                                            'club': widget.club,
                                            'exam': state
                                                .filteredEvaluations[index]
                                                .exam,
                                            'evaluation': state
                                                .filteredEvaluations[index],
                                          },
                                        );
                                      },
                                    ),
                                    PopupMenuItem(
                                      child: Row(
                                        children: [
                                          const Icon(Icons.delete),
                                          const SizedBox(width: 8),
                                          Text(
                                            context.str?.delete ?? 'Delete',
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        context.read<EvaluationCubit>().delete(
                                            state.filteredEvaluations[index]);
                                      },
                                    ),
                                  ];
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
