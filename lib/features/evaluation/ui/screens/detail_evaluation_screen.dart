import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/app.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class DetailEvaluationScreen extends StatefulWidget {
  final int id;
  const DetailEvaluationScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  State<DetailEvaluationScreen> createState() => _DetailEvaluationScreenState();
}

class _DetailEvaluationScreenState extends BaseState<DetailEvaluationScreen> {
  EvaluationModel? _evaluation;

  @override
  void initState() {
    super.initState();

    final evaluation = context.read<EvaluationBlocRead>().state.whenOrNull(
          success: (_, __, item) => item,
        );

    safeSetState(() {
      _evaluation = evaluation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              BlocBuilder<EvaluationBlocRead, BlocReadState<EvaluationModel>>(
            builder: (context, state) {
              return state.maybeWhen(
                success: (_, __, selected) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleSmall(context.str?.exam),
                      Gap(8.h),
                      ListViewBuilderTile(
                        leading: const Icon(MoonIcons.generic_about_24_light),
                        titleText: selected?.exam?.title,
                        subtitleText: selected?.exam?.description,
                      ),
                      Gap(16.h),
                      TitleSmall(context.str?.athlete),
                      Gap(8.h),
                      ListViewBuilderTile(
                        imageUrl: selected?.athlete?.image,
                        titleText: selected?.athlete?.name,
                        subtitleText: selected?.athlete?.email,
                      ),
                      Gap(16.h),
                      TitleSmall(context.str?.evaluator),
                      Gap(8.h),
                      ListViewBuilderTile(
                        imageUrl: selected?.coach?.image,
                        titleText: selected?.coach?.name,
                        subtitleText: selected?.coach?.email,
                      ),
                      Gap(16.h),
                      TitleSmall(context.str?.evaluations),
                      Gap(8.h),
                      ListViewBuilder<QuestionEvaluationModel>(
                        items: selected?.evaluations ?? [],
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index, item) {
                          return ListViewBuilderTile(
                            leading: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MoonChip(
                                  chipSize: MoonChipSize.sm,
                                  label: BodySmall('${index + 1}'),
                                ),
                                const VerticalDivider()
                              ],
                            ),
                            titleText: item.questionName,
                            subtitleText:
                                '${context.str?.answer}: ${item.answer}',
                          );
                        },
                      ),
                    ],
                  );
                },
                orElse: () => const Center(child: MoonCircularLoader()),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: TitleMedium(context.str?.evaluationDetail),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          context.router.maybePop();
        },
      ),
      actions: [
        BlocListener<EvaluationBlocWrite, BlocWriteState<EvaluationModel>>(
          listener: (context, state) {
            state.whenOrNull(
              success: (evaluation) {
                context.successToast(
                  title: context.str?.success,
                  description: context.str
                      ?.evaluationDeletedSuccessfully(evaluation.athlete?.name),
                );
                context.read<EvaluationBlocRead>().add(
                      BlocReadEvent.remove(evaluation.id),
                    );
                context.router.back();
              },
              failure: (failure) {
                context.errorToast(
                  title: context.str?.deleteFailed,
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
                    value: context.read<EvaluationBlocWrite>(),
                    child: AlertDialog(
                      title: TitleMedium(context.str?.deleteEvaluation),
                      content: TitleMedium(context.str
                          ?.areYouSureYouWantToDeleteAthleteNameEvaluation(
                        _evaluation?.athlete?.name,
                      )),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Text(
                            context.str?.no ?? 'No',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context.read<EvaluationBlocWrite>().add(
                                  BlocWriteEvent.delete(
                                    DeleteEvaluationParams(
                                        evaluationId: widget.id),
                                  ),
                                );
                            Navigator.of(ctx).pop();
                          },
                          child: Text(
                            context.str?.yes ?? 'Yes',
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
        BlocBuilder<EvaluationBlocRead, BlocReadState<EvaluationModel>>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (_, __, selected) {
                return MoonButton.icon(
                  icon: const Icon(MoonIcons.generic_edit_24_light),
                  onTap: () {
                    context.read<ExamBlocRead>().add(
                          BlocReadEvent.select(selected?.exam),
                        );
                    context.read<EvaluationBlocRead>().add(
                          BlocReadEvent.select(selected),
                        );
                    context
                        .read<ClubMembersCubit>()
                        .selectUser(selected!.athlete!);
                    context.router.popAndPush(
                      const UpsertEvaluationRoute(),
                    );
                  },
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ],
    );
  }
}
