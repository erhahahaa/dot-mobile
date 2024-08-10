import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CoachEvaluationFormScreen extends StatelessWidget {
  final ClubModel club;
  final UserModel user;
  final ExamModel exam;
  final EvaluationModel? evaluation;

  const CoachEvaluationFormScreen({
    super.key,
    required this.club,
    required this.user,
    required this.exam,
    this.evaluation,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EvaluationCubit, EvaluationState>(
      listener: (context, state) {
        if (state.failure != null) {
          ToastModel(
            message: state.failure?.message ?? 'An error occured',
            type: ToastType.error,
          ).fire(context);
        }

        if (state.state == BaseState.success) {
          ToastModel(
            message: 'Evaluation created successfully',
            type: ToastType.success,
          ).fire(context);
          // context.read<EvaluationCubit>().clear();
          context.pop();
        }
      },
      builder: (context, state) {
        return Parent(
          body: RoundedTopBackground(
            title: exam.title,
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H2Text('Athlete Detail'),
                    SizedBox(height: 8.h),
                    Skeletonizer(
                      enabled: state.state == BaseState.loading,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: context.containerColor(0.1),
                        ),
                        child: Row(
                          children: [
                            CachedNetworkImage(
                              imageUrl: user.image,
                              width: 64.w,
                              height: 64.w,
                            ),
                            SizedBox(width: 8.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                H5Text('Name: ${user.name}'),
                                SizedBox(height: 2.h),
                                H5Text('Email: ${user.email}'),
                                SizedBox(height: 2.h),
                                H5Text('Age: ${user.bornDate.toAge()}'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    H2Text('Evaluation Form'),
                    SizedBox(height: 8.h),
                    Column(
                      children: state.questions.map((e) {
                        final index = state.questions.indexOf(e);
                        final find = evaluation?.evaluations.firstWhere(
                          (element) => element.questionId == e.question.id,
                        );
                        e.controller.text = find?.answer ?? '';
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.h),
                            H4Text('${index + 1}. ${e.question.question}'),
                            SizedBox(height: 4.h),
                            TextF(
                              currFocusNode: e.focusNode,
                              nextFocusNode: index == state.questions.length - 1
                                  ? null
                                  : state.questions[index + 1].focusNode,
                              controller: e.controller,
                              hintText: e.question.question,
                              keyboardType:
                                  e.question.type == QuestionType.numeric
                                      ? TextInputType.number
                                      : TextInputType.text,
                              textInputAction:
                                  index == state.questions.length - 1
                                      ? TextInputAction.done
                                      : TextInputAction.next,
                              isHintVisible: false,
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 16.h),
                    Button(
                      text: 'Submit',
                      onPressed: () {
                        if (evaluation != null) {
                          context.read<EvaluationCubit>().update(
                                UpdateEvaluationParams(
                                  id: evaluation?.id ?? 0,
                                  clubId: club.id,
                                  examId: exam.id,
                                  coachId: state.coach.id,
                                  athleteId: user.id,
                                  evaluations: state.questions
                                      .map((e) => QuestionEvaluationModel(
                                            questionId: e.question.id,
                                            answer: e.controller.text,
                                          ))
                                      .toList(),
                                ),
                              );
                        } else {
                          context.read<EvaluationCubit>().create(
                                CreateEvaluationParams(
                                  clubId: club.id,
                                  examId: exam.id,
                                  coachId: state.coach.id,
                                  athleteId: user.id,
                                  evaluations: state.questions
                                      .map((e) => QuestionEvaluationModel(
                                            questionId: e.question.id,
                                            answer: e.controller.text,
                                          ))
                                      .toList(),
                                ),
                              );
                        }
                      },
                      isDisabled: state.state == BaseState.loading,
                      isLoading: state.state == BaseState.loading,
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
