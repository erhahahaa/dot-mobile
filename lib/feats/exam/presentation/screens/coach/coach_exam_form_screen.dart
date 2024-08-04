import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CoachExamFormScreen extends StatefulWidget {
  final ExamModel? exam;
  final ClubModel club;
  const CoachExamFormScreen({
    super.key,
    this.exam,
    required this.club,
  });

  @override
  State<CoachExamFormScreen> createState() => _CoachExamFormScreenState();
}

class _CoachExamFormScreenState extends State<CoachExamFormScreen> {
  late TextEditingController _titleCon, _dueAtCon, _descriptionCon;

  late FocusNode _titleFn, _dueAtFn, _descriptionFn;

  late GlobalKey<FormState> _formKey;

  DateTime? _dueAt;

  @override
  void initState() {
    _titleCon = TextEditingController(text: widget.exam?.title);
    _dueAtCon = TextEditingController(
      text: widget.exam?.dueAt?.toDayMonthYear(),
    );
    _descriptionCon = TextEditingController(text: widget.exam?.description);

    _titleFn = FocusNode();
    _dueAtFn = FocusNode();
    _descriptionFn = FocusNode();

    _formKey = GlobalKey<FormState>();

    if (widget.exam != null) {
      _dueAt = widget.exam!.dueAt;
    }
    super.initState();
  }

  @override
  void dispose() {
    _titleCon.dispose();
    _dueAtCon.dispose();
    _descriptionCon.dispose();

    _titleFn.dispose();
    _dueAtFn.dispose();
    _descriptionFn.dispose();

    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExamCubit, ExamState>(
      listener: (context, state) {
        if (state.state == BaseState.success) {
          final exam = state.createdExam;
          if (exam != null && widget.exam == null) {
            context.pushReplacementNamed(
              AppRoutes.coachCreateExamQuestion.name,
              extra: {
                'route': 'exam',
                'club': widget.club,
                'exam': exam,
              },
            );
          }
          if (exam != null && widget.exam != null) {
            final qCub = context.read<QuestionCubit>();

            qCub.getAll(const PaginationParams(), exam.id).then(
              (_) {
                context.pushReplacementNamed(
                  AppRoutes.coachEditExamQuestion.name,
                  extra: {
                    'route': 'exam',
                    'club': widget.club,
                    'exam': exam,
                    'questions': qCub.state.questions.isEmpty
                        ? null
                        : qCub.state.questions,
                  },
                );
              },
            );
          }
          context.read<ExamCubit>().emitInitial();
        }
        if (state.state == BaseState.failure) {
          ToastModel(
            message: widget.exam == null
                ? context.str?.failedCreateExam
                : context.str?.failedEditExam,
            type: ToastType.error,
          ).fire(context);
          context.read<ExamCubit>().emitInitial();
        }
      },
      builder: (context, state) {
        return Parent(
          body: RoundedTopBackground(
            title: widget.exam == null
                ? (context.str?.createExam ?? 'Create Exam')
                : (context.str?.editExam ?? 'Edit Exam'),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SportImageContainer(
                      imageUrl: widget.exam?.media?.url,
                      file: state.image,
                      width: 344.w,
                      height: 200.w,
                      borderRadius: BorderRadius.circular(12.r),
                      onPressed: () =>
                          context.read<ExamCubit>().pickImageFromGallery(),
                    ),
                    SizedBox(height: 16.h),
                    TextF(
                      key: const Key('createExamForm_titleField'),
                      currFocusNode: _titleFn,
                      nextFocusNode: _descriptionFn,
                      controller: _titleCon,
                      textInputAction: TextInputAction.next,
                      prefixIcon: Icon(
                        Icons.sports,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText:
                          context.str?.enterExamTitle ?? 'Enter exam title',
                      hint: context.str?.title ?? 'Title',
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return context.str?.examTitleRequired ??
                              'Exam title is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 8.h),
                    TextF(
                      key: const Key('createExamForm_descriptionField'),
                      currFocusNode: _descriptionFn,
                      nextFocusNode: _dueAtFn,
                      controller: _descriptionCon,
                      maxLines: 10,
                      textInputAction: TextInputAction.next,
                      prefixIcon: Icon(
                        Icons.description,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hint: context.str?.description ?? 'Description',
                      hintText: context.str?.enterExamDescription ??
                          'Enter the exam description',
                    ),
                    SizedBox(height: 8.h),
                    TextF(
                      key: const Key('createExamForm_dueAtField'),
                      currFocusNode: _dueAtFn,
                      controller: _dueAtCon,
                      textInputAction: TextInputAction.done,
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hint: context.str?.dueAt ?? 'Start Date',
                      hintText:
                          context.str?.enterDueAt ?? 'Enter the start date',
                      validator: (String? value) {
                        if (value == null || value.isEmpty || _dueAt == null) {
                          return context.str?.dueAtRequired ??
                              'Start date is required';
                        }
                        return null;
                      },
                      onTap: () async {
                        final res = await showDatePicker(
                          context: context,
                          firstDate: DateTime(1970),
                          lastDate: DateTime(2030),
                          initialDate: _dueAt,
                        );
                        if (res != null) {
                          setState(() {
                            _dueAt = res;
                            _dueAtCon.text = res.toDayMonthYear();
                          });
                        }
                      },
                      suffixIcon: IconButton(
                        onPressed: () async {
                          final res = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1970),
                            lastDate: DateTime(2030),
                            initialDate: _dueAt,
                          );
                          if (res != null) {
                            setState(() {
                              _dueAt = res;
                              _dueAtCon.text = res.toDayMonthYear();
                            });
                          }
                        },
                        icon: Icon(
                          Icons.calendar_today,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Button(
                      key: const Key('createExamForm_createButton'),
                      text: widget.exam == null
                          ? context.str?.create ?? 'Create'
                          : context.str?.edit ?? 'Edit',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (_dueAt == null) {
                            return;
                          }

                          if (widget.exam != null) {
                            context.read<ExamCubit>().update(
                                  UpdateExamParams(
                                    id: widget.exam!.id,
                                    clubId: widget.club.id,
                                    title: _titleCon.text,
                                    image: state.image,
                                    dueAt: _dueAt,
                                    description: _descriptionCon.text.isNotEmpty
                                        ? _descriptionCon.text
                                        : null,
                                  ),
                                );
                          } else {
                            context.read<ExamCubit>().create(
                                  CreateExamParams(
                                    clubId: widget.club.id,
                                    title: _titleCon.text,
                                    image: state.image,
                                    dueAt: _dueAt,
                                    description: _descriptionCon.text.isNotEmpty
                                        ? _descriptionCon.text
                                        : null,
                                  ),
                                );
                          }
                        }
                      },
                      isLoading: state.state == BaseState.loading,
                      isDisabled: state.state == BaseState.loading,
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
