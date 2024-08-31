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
class DetailEvaluationScreen extends StatelessWidget {
  final int id;
  const DetailEvaluationScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              BlocBuilder<EvaluationBlocRead, BlocStateRead<EvaluationModel>>(
            builder: (context, state) {
              return state.maybeWhen(
                success: (_, __, selectedItem) {
                  Log.info('selectedItem: $selectedItem');
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleSmall('Exam'),
                      Gap(8.h),
                      ListViewBuilderTile(
                        leading: const Icon(MoonIcons.generic_about_24_light),
                        titleText: selectedItem?.exam?.title,
                        subtitleText: selectedItem?.exam?.description,
                      ),
                      Gap(16.h),
                      TitleSmall('Athlete'),
                      Gap(8.h),
                      ListViewBuilderTile(
                        imageUrl: selectedItem?.athlete?.image,
                        titleText: selectedItem?.athlete?.name,
                        subtitleText: selectedItem?.athlete?.email,
                      ),
                      Gap(16.h),
                      TitleSmall('Accessor'),
                      Gap(8.h),
                      ListViewBuilderTile(
                        imageUrl: selectedItem?.coach?.image,
                        titleText: selectedItem?.coach?.name,
                        subtitleText: selectedItem?.coach?.email,
                      ),
                      Gap(16.h),
                      TitleSmall('Evaluations'),
                      Gap(8.h),
                      ListViewBuilder<QuestionEvaluationModel>(
                        items: selectedItem?.evaluations ?? [],
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
                                VerticalDivider()
                              ],
                            ),
                            titleText: item.questionName,
                            subtitleText: 'Answer: ${item.answer}',
                          );
                        },
                      ),
                    ],
                  );
                },
                orElse: () => Center(child: MoonCircularLoader()),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Evaluation Detail'),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          context.router.maybePop();
        },
      ),
      actions: [
        BlocListener<EvaluationBlocWrite, BlocStateWrite<EvaluationModel>>(
          listener: (context, state) {
            state.whenOrNull(
              success: (evaluation) {
                context.successToast(
                  title: 'Success',
                  description: '${evaluation.athlete?.name} evaluation deleted',
                );
                context.read<EvaluationBlocRead>().add(
                      BlocEventRead.remove(evaluation.id),
                    );
                context.router.back();
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
                    value: context.read<EvaluationBlocWrite>(),
                    child: AlertDialog(
                      title: const Text('Delete Evaluation'),
                      content: const Text(
                          'Are you sure you want to delete this evaluation?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            context.read<EvaluationBlocWrite>().add(
                                  BlocEventWrite.delete(
                                    DeleteEvaluationParams(evaluationId: id),
                                  ),
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
        BlocBuilder<EvaluationBlocRead, BlocStateRead<EvaluationModel>>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (_, __, selectedItem) {
                return MoonButton.icon(
                  icon: const Icon(MoonIcons.generic_edit_24_light),
                  onTap: () {
                    context.read<ExamBlocRead>().add(
                          BlocEventRead.select(selectedItem?.exam),
                        );
                    context.read<EvaluationBlocRead>().add(
                          BlocEventRead.select(selectedItem),
                        );
                    context
                        .read<ClubMembersCubit>()
                        .selectUser(selectedItem!.athlete!);
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
