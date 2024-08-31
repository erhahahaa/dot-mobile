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

class _UpsertExamScreenState extends State<UpsertExamScreen> {
  ExamModel? _exam;
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  // late TextEditingController _dueAtController;

  late FocusNode _titleFocusNode;
  late FocusNode _descriptionFocusNode;
  // late FocusNode _dueAtFocusNode;

  late GlobalKey<FormState> _formKey;

  // DateTime? _dueAt;

  @override
  void initState() {
    final examBloc = context.read<ExamBlocRead>();
    _exam = examBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );
    _titleController = TextEditingController(text: _exam?.title);
    _descriptionController = TextEditingController(text: _exam?.description);
    // _dueAtController = TextEditingController(
    //   text: _exam?.dueAt?.toDayMonthYear(),
    // );

    // _dueAt = _exam?.dueAt;

    _titleFocusNode = FocusNode();
    _descriptionFocusNode = FocusNode();
    // _dueAtFocusNode = FocusNode();

    _formKey = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    // _dueAtController.dispose();

    _titleFocusNode.dispose();
    _descriptionFocusNode.dispose();
    // _dueAtFocusNode.dispose();

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
                  return context.str?.examTitleRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.description),
            FormInput(
              controller: _descriptionController,
              currentFocus: _descriptionFocusNode,
              textInputAction: TextInputAction.done,
              hintText: context.str?.enterDescription,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.descriptionRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            // FormLabel(context.str?.dueAt),
            // FormInput(
            //   controller: _dueAtController,
            //   currentFocus: _dueAtFocusNode,
            //   textInputAction: TextInputAction.done,
            //   hintText: context.str?.enterDueAt,
            //   readOnly: true,
            //   validator: (String? value) {
            //     if (value == null || value.isEmpty || _dueAt == null) {
            //       return context.str?.dueAtRequired ?? 'Due date is required';
            //     }
            //     return null;
            //   },
            //   onTap: () async {
            //     final res = await showDatePicker(
            //       context: context,
            //       firstDate: DateTime(1970),
            //       lastDate: DateTime(2030),
            //       initialDate: _dueAt,
            //     );
            //     if (res != null) {
            //       setState(() {
            //         _dueAt = res;
            //         _dueAtController.text = res.toDayMonthYear();
            //       });
            //     }
            //   },
            // ),
            // Gap(12.h),
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
                      title: 'Error',
                      description: message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return FormButton(
                  isLoading: state is BlocStateWriteLoading,
                  text: _exam == null ? 'Create Exam' : 'Update Exam',
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      final clubBloc = context.read<ClubBlocRead>();
                      final club = clubBloc.state.whenOrNull(
                        success: (_, __, selectedItem) => selectedItem,
                      );

                      if (club == null) {
                        return context.errorToast(
                          title: 'App state obfuscated',
                          description: 'Please restart the app',
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
