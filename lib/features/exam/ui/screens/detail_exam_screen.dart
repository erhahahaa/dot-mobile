import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class DetailExamScreen extends StatefulWidget implements AutoRouteWrapper {
  final int id;

  const DetailExamScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  State<DetailExamScreen> createState() => _DetailExamScreenState();
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: context.read<QuestionBlocRead>()..add(BlocEventRead.get(id: id)),
      child: this,
    );
  }
}

class _DetailExamScreenState extends State<DetailExamScreen>
    with SingleTickerProviderStateMixin {
  ClubModel? club;
  ExamModel? exam;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    final clubBloc = context.read<ClubBlocRead>();
    club = clubBloc.state.whenOrNull(
      success: (_, __, selectedClub) => selectedClub,
    );

    final examBloc = context.read<ExamBlocRead>();
    exam = examBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );

    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: TabBarView(
          controller: _tabController,
          children: [
            _buildExamDetail(),
            _buildAthleteEvaluation(),
          ],
        ),
      ),
    );
  }

  Widget _buildExamDetail() {
    return Parent(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.str?.programDetail ?? 'Exam Detail',
                    style: Theme.of(context).textTheme.titleMedium),
                ContainerWrapper(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Title : ${exam?.title}'),
                      if (exam?.dueAt != null)
                        Text(
                          'Description : ${exam?.description}',
                        ),
                    ],
                  ),
                ),
              ],
            ),
            BlocBuilder<QuestionBlocRead, BlocStateRead<QuestionModel>>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(context.str?.question ?? 'Questions',
                        style: Theme.of(context).textTheme.titleMedium),
                    Gap(8.h),
                    state.maybeWhen(
                      success: (items, __, ___) {
                        return ListViewBuilder(
                          items: items,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index, item) {
                            return ListViewBuilderTile(
                              titleText: item.question,
                              subtitleText:
                                  'Type: ${item.type.value.capitalizeFirst}',
                              leading: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MoonChip(
                                    chipSize: MoonChipSize.sm,
                                    label: BodySmall('${index + 1}'),
                                  ),
                                  const VerticalDivider()
                                ],
                              ),
                            );
                          },
                        );
                      },
                      orElse: () => const Center(child: MoonCircularLoader()),
                    ),
                    Gap(16.h),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAthleteEvaluation() {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final res = await showDialog<UserModel>(
            context: context,
            builder: (ctx) {
              return Dialog(
                child: MultiBlocProvider(
                  providers: [
                    BlocProvider.value(
                      value: context.read<ClubMembersCubit>()
                        ..getMembers(
                          clubId: club?.id ?? 0,
                          athleteOnly: true,
                        ),
                    ),
                    BlocProvider.value(
                      value: context.read<EvaluationBlocRead>(),
                    ),
                  ],
                  child: BlocBuilder<ClubMembersCubit, ClubMembersState>(
                    builder: (context, state) {
                      final evaluations =
                          context.read<EvaluationBlocRead>().state.maybeWhen(
                                success: (_, evaluations, __) => evaluations,
                                orElse: () => <EvaluationModel>[],
                              );

                      final eligibleMembers = state.members
                          .where((member) => evaluations.every(
                                (evaluation) {
                                  Log.info(
                                      'evaluation: ${evaluation.athlete?.id}');
                                  Log.info('member: ${member.id}');
                                  return member.id != evaluation.athlete?.id;
                                },
                              ))
                          .toList();

                      return ListViewBuilder(
                        items: eligibleMembers,
                        color: Colors.transparent,
                        height: 0.7.sh,
                        margin: EdgeInsets.all(4.h),
                        itemBuilder: (context, index, item) {
                          return ListViewBuilderTile(
                            titleText: item.name,
                            imageUrl: item.image,
                            subtitle: MoonChip(
                              chipSize: MoonChipSize.sm,
                              label: BodySmall(item.role.name),
                            ),
                            trailing: const Icon(
                              MoonIcons.controls_chevron_right_24_regular,
                            ),
                            onTap: () {
                              context.router.maybePop(item);
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              );
            },
          );
          if (res == null) return;
          if (mounted) {
            context.read<ExamBlocRead>().add(
                  BlocEventRead.select(exam),
                );

            context.read<ClubMembersCubit>().selectUser(res);
            context.router.push(const UpsertEvaluationRoute());
          }
        },
        label: const Text('Evaluate'),
        icon: const Icon(Icons.rate_review),
      ),
      body: BlocBuilder<EvaluationBlocRead, BlocStateRead<EvaluationModel>>(
        builder: (context, state) {
          return state.maybeWhen(
              success: (items, __, ___) {
                return ListViewBuilder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  items: items.where((e) => e.examId == widget.id).toList(),
                  itemBuilder: (context, index, evaluation) {
                    return _buildEvaluationItem(evaluation, context);
                  },
                );
              },
              failure: (message) => ErrorAlert(message),
              orElse: () {
                final fakeEvaluations =
                    List.generate(10, (index) => EvaluationModel.fake());
                return ListViewBuilder(
                  items: fakeEvaluations,
                  itemBuilder: (context, index, evaluation) => Skeletonizer(
                    child: _buildEvaluationItem(evaluation, context),
                  ),
                );
              });
        },
      ),
    );
  }

  ListViewBuilderTile _buildEvaluationItem(
      EvaluationModel evaluation, BuildContext context) {
    return ListViewBuilderTile(
      titleText: evaluation.athlete?.name ?? '',
      subtitleText: evaluation.athlete?.role.name ?? '',
      imageUrl: evaluation.athlete?.image,
      onTap: () {
        context.read<EvaluationBlocRead>().add(
              BlocEventRead.select(evaluation),
            );
        context.router.push(
          DetailEvaluationRoute(id: evaluation.id),
        );
      },
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: BlocBuilder<ExamBlocRead, BlocStateRead<ExamModel>>(
        builder: (context, state) {
          if (state is BlocStateReadSuccess<ExamModel>) {
            final exam = state.selectedItem;
            if (exam != null) {
              return Text(exam.title);
            }
          }
          return const Text('Detail Exam');
        },
      ),
      bottom: TabBar(
        controller: _tabController,
        tabs: const [
          Tab(text: 'Program Detail'),
          Tab(text: 'Athlete Evaluation'),
        ],
      ),
      actions: [
        BlocListener<ExamBlocWrite, BlocStateWrite<ExamModel>>(
          listener: (context, state) {
            state.whenOrNull(
              success: (success) {
                context.read<ExamBlocRead>().add(
                      BlocEventRead.remove(success.id),
                    );
                context.successToast(
                  title: 'Success',
                  description:
                      '${success.title} has been deleted successfully.',
                );
                Navigator.of(context).pop();
              },
              failure: (failure) {
                context.errorToast(
                  title: 'Failure',
                  description: failure,
                );
              },
            );
          },
          child: MoonButton.icon(
            icon: const Icon(
              MoonIcons.generic_delete_24_light,
              color: Colors.red,
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (ctx) {
                  return BlocProvider.value(
                    value: context.read<ExamBlocWrite>(),
                    child: AlertDialog(
                      title: const Text('Delete Exam'),
                      content: const Text(
                          'Are you sure you want to delete this exam?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            context.read<ExamBlocWrite>().add(
                                  BlocEventWrite.delete(
                                      DeleteExamParams(examId: widget.id)),
                                );
                            Navigator.of(ctx).pop();
                          },
                          child: const Text('Delete'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
        MoonButton.icon(
          icon: const Icon(MoonIcons.generic_edit_24_light),
          onTap: () {
            context.read<ExamBlocRead>().add(
                  BlocEventRead.select(exam),
                );
            context.router.popAndPush(const UpsertExamRoute());
          },
        ),
      ],
    );
  }
}
