import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

@RoutePage()
class UpsertExamScreen extends StatefulWidget implements AutoRouteWrapper {
  const UpsertExamScreen({super.key});

  @override
  State<UpsertExamScreen> createState() => _UpsertExamScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: sl<ExamBlocWrite>(),
      child: this,
    );
  }
}

class _UpsertExamScreenState extends BaseState<UpsertExamScreen> {
  ExamModel? _exam;
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  late FocusNode _titleFocusNode;
  late FocusNode _descriptionFocusNode;

  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    addSubscription(context.read<ExamBlocRead>().stream.listen(
      (state) {
        final exam = state.whenOrNull(
          success: (_, __, item) => item,
        );
        safeSetState(() {
          _exam = exam;
          _titleController = TextEditingController(text: _exam?.title);
          _descriptionController =
              TextEditingController(text: _exam?.description);
        });
      },
    ));

    _titleFocusNode = FocusNode();
    _descriptionFocusNode = FocusNode();

    _formKey = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();

    _titleFocusNode.dispose();
    _descriptionFocusNode.dispose();

    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: TitleMedium(
          _exam == null ? 'Create New Exam' : 'Edit ${_exam?.title}',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: _buildExam(context),
      ),
    );
  }

  Widget _buildExam(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormLabel(context.str?.examTitle),
            FormInput(
              controller: _titleController,
              currentFocus: _titleFocusNode,
              nextFocus: _descriptionFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterExamTitle,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.examTitleIsRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.examDescription),
            FormInput(
              controller: _descriptionController,
              currentFocus: _descriptionFocusNode,
              textInputAction: TextInputAction.done,
              hintText: context.str?.enterExamDescription,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.examDescriptionIsRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            BlocConsumer<ExamBlocWrite, BlocStateWrite<ExamModel>>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (exam) {
                    context.read<ExamBlocRead>().add(
                          BlocEventRead.select(exam),
                        );
                    context.read<QuestionBlocRead>().add(
                          BlocEventRead.get(id: exam.id),
                        );
                    context.router.popAndPush(const UpsertQuestionRoute());
                  },
                  failure: (message) {
                    context.errorToast(
                      title: _exam == null
                          ? context.str?.createExamFailed
                          : context.str?.updateExamFailed,
                      description: message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return FormButton(
                  isLoading: state is BlocStateWriteLoading,
                  text: _exam == null
                      ? context.str?.createExam
                      : context.str?.updateExam,
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      final clubBloc = context.read<ClubBlocRead>();
                      final club = clubBloc.state.whenOrNull(
                        success: (_, __, selectedItem) => selectedItem,
                      );

                      if (club == null) {
                        return context.errorToast(
                          title: context.str?.obsecuredState,
                          description: context.str?.pleaseRestartTheApp,
                        );
                      }

                      final id = _exam?.id;
                      if (_exam == null || id == null) {
                        context.read<ExamBlocWrite>().add(
                              BlocEventWrite.create(
                                CreateExamParams(
                                  clubId: club.id,
                                  title: _titleController.text,
                                  description: _descriptionController.text,
                                  dueAt: DateTime.now(),
                                ),
                              ),
                            );
                      } else {
                        context.read<ExamBlocWrite>().add(
                              BlocEventWrite.update(
                                UpdateExamParams(
                                  id: id,
                                  clubId: club.id,
                                  title: _titleController.text,
                                  description: _descriptionController.text,
                                  dueAt: DateTime.now(),
                                ),
                              ),
                            );
                      }
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
