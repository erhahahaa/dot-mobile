import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/extensions/datetime.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class DetailExamScreen extends StatelessWidget implements AutoRouteWrapper {
  final int id;

  const DetailExamScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: context.read<QuestionBlocRead>()..add(BlocEventRead.get(id: id)),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              _buildQuestion(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return BlocBuilder<ExamBlocRead, BlocStateRead<ExamModel>>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (_, __, selectedItem) {
            return Column(
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
                      Text('Title : ${selectedItem?.title}'),
                      if (selectedItem?.dueAt != null)
                        Text(
                          'Due at : ${selectedItem?.dueAt!.toDayMonthYear()}',
                        ),
                    ],
                  ),
                ),
              ],
            );
          },
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget _buildQuestion() {
    return BlocBuilder<QuestionBlocRead, BlocStateRead<QuestionModel>>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.str?.question ?? 'Questions',
                style: Theme.of(context).textTheme.titleMedium),
            Gap(8.h),
            state.maybeWhen(
              success: (items, __, ___) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final question = items[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Question ${index + 1} :',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 4.h),
                          Text(question.question),
                        ],
                      ),
                    );
                  },
                );
              },
              orElse: () => const SizedBox(),
            ),
            Gap(16.h),
          ],
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
                                      DeleteExamParams(examId: id)),
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
            context.router.popAndPush(const UpsertExamRoute());
          },
        ),
      ],
    );
  }
}
