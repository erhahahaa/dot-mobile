import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class UpsertQuestionScreen extends StatefulWidget {
  const UpsertQuestionScreen({super.key});

  @override
  State<UpsertQuestionScreen> createState() => _UpsertQuestionScreenState();
}

class _UpsertQuestionScreenState extends BaseState<UpsertQuestionScreen> {
  ExamModel? _exam;
  final List<QuestionItem> _questions = [];

  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    final exam = context.read<ExamBlocRead>().state.whenOrNull(
          success: (_, __, selected) => selected,
        );

    safeSetState(() {
      _exam = exam;
    });

    final questions = context.read<QuestionBlocRead>().state.whenOrNull(
          success: (items, _, __) => items,
        );

    if (questions != null) {
      safeSetState(() {
        _questions.clear();
        _questions.addAll(questions.map((question) {
          return QuestionItem(
            question: question,
            questionFN: FocusNode(),
            questionCon: TextEditingController(text: question.question),
            typeFN: FocusNode(),
            typeCon: TextEditingController(
                text: question.type.value.capitalizeFirst),
            order: question.order,
          );
        }));
      });
    }

    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    for (var question in _questions) {
      question.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: Text(
          context.str?.examQuestions(_exam?.title) ??
              '${_exam?.title} ${context.str?.questions}',
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.router.back();
          },
        ),
      ),
      floatingActionButton:
          BlocConsumer<QuestionBlocWrite, BlocWriteState<List<QuestionModel>>>(
        listener: (context, state) {
          state.whenOrNull(
            success: (item) {
              context.successToast(
                title: context.str?.success,
                description: context.str?.questionSavedSuccessfully,
              );

              context.read<QuestionBlocRead>().add(
                    BlocReadEvent.get(id: _exam?.id ?? 0),
                  );

              final exams = context.read<ExamBlocRead>().state.whenOrNull(
                    success: (items, _, __) => items,
                  );

              final updClub = context.clubRead?.copyWith(
                examCount: exams?.length ?? 0,
              );

              context.read<ClubBlocWrite>().add(
                    BlocWriteEvent.update(updClub),
                  );

              context.router.back();
            },
            failure: (message) {
              context.errorToast(
                title: context.str?.questionSaveFailed,
                description: message,
              );
            },
          );
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              BackTopButton(
                show: showScrollToTopButton,
                onPressed: scrollToTop,
              ),
              Gap(8.h),
              FloatingActionButtonExtended(
                heroTag: 'save_question_button_$hashCode',
                isLoading: state is BlocWriteStateLoading,
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    final createParams = <CreateQuestionParams>[];
                    final updateParams = <UpdateQuestionParams>[];
                    for (final quest in _questions) {
                      if (quest.question.id == 0) {
                        final params = CreateQuestionParams(
                          order: quest.order,
                          examId: _exam?.id ?? 0,
                          type: QuestionType.fromString(
                            quest.typeCon.text,
                          ),
                          question: quest.questionCon.text,
                          options: quest.question.options,
                        );
                        createParams.add(params);
                      } else {
                        final params = UpdateQuestionParams(
                          id: quest.question.id,
                          order: quest.order,
                          examId: _exam?.id ?? 0,
                          type: QuestionType.fromString(
                            quest.typeCon.text,
                          ),
                          question: quest.questionCon.text,
                          options: quest.question.options,
                        );
                        updateParams.add(params);
                      }
                    }
                    if (createParams.isNotEmpty) {
                      context.read<QuestionBlocWrite>().add(
                            BlocWriteEvent.create(createParams),
                          );
                    }
                    if (updateParams.isNotEmpty) {
                      context.read<QuestionBlocWrite>().add(
                            BlocWriteEvent.update(updateParams),
                          );
                    }
                  }
                },
                icon: const Icon(Icons.save),
                label: Text(context.str?.save ?? 'Save'),
              ),
            ],
          );
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: _buildForm(context),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return BlocConsumer<QuestionBlocRead, BlocReadState<QuestionModel>>(
      listener: (context, state) {
        state.whenOrNull(
          success: (items, _, __) {
            _questions.clear();
            _questions.addAll(
              items.map(
                (question) {
                  return QuestionItem(
                    question: question,
                    questionFN: FocusNode(),
                    questionCon: TextEditingController(text: question.question),
                    typeFN: FocusNode(),
                    typeCon: TextEditingController(
                        text: question.type.value.capitalizeFirst),
                    order: question.order,
                  );
                },
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          success: (_, __, ___) {
            return Form(
              key: _formKey,
              child: ReorderableListView.builder(
                itemCount: _questions.length,
                scrollController: scrollController,
                proxyDecorator: (child, index, animation) => ProxyDecorator(
                  index: index,
                  animation: animation,
                  child: child,
                ),
                footer: AddItemButton(
                  text: context.str?.addQuestion ?? 'Add Question',
                  onTap: () {
                    setState(
                      () {
                        _questions.add(
                          QuestionItem(
                            question: QuestionModel(
                              examId: _exam?.id ?? 0,
                              question: '',
                              type: QuestionType.text,
                            ),
                            questionFN: FocusNode(),
                            questionCon: TextEditingController(),
                            typeFN: FocusNode(),
                            typeCon: TextEditingController(
                              text: QuestionType.text.value.capitalizeFirst,
                            ),
                            order: _questions.length,
                          ),
                        );
                      },
                    );
                  },
                ),
                itemBuilder: (context, index) {
                  return _buildQuestionItem(context, index);
                },
                onReorder: (int oldIndex, int newIndex) {
                  setState(() {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }

                    final QuestionItem item = _questions.removeAt(oldIndex);
                    _questions.insert(newIndex, item);

                    for (int i = 0; i < _questions.length; i++) {
                      _questions[i].order = i;
                    }
                  });
                },
              ),
            );
          },
          failure: (message) {
            return ErrorAlert(message);
          },
          orElse: () {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MoonLinearLoader(),
                  Gap(16.h),
                  Text(context.str?.loadingQuestions ?? 'Loading questions...'),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildQuestionItem(BuildContext context, int index) {
    final questionItem = _questions[index];
    return ContainerWrapper(
      key: Key('questionItem_$index'),
      padding: EdgeInsets.all(8.w),
      margin: EdgeInsets.only(bottom: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('${context.str?.question} ${index + 1}'),
              const Spacer(),
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: context.theme.colorScheme.error,
                  size: 24.sp,
                ),
                onPressed: () {
                  setState(
                    () {
                      if (_questions[index].question.id != 0) {
                        context.read<QuestionBlocWrite>().add(
                              BlocWriteEvent.delete(
                                DeleteQuestionParams(
                                  id: _questions[index].question.id,
                                ),
                              ),
                            );
                      }
                      _questions.removeAt(index);
                    },
                  );
                },
              ),
              ReorderableDragStartListener(
                index: index,
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: context.theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    Icons.drag_handle,
                    color: context.theme.colorScheme.onSurface,
                    size: 24.sp,
                  ),
                ),
              ),
            ],
          ),
          FormLabel(context.str?.question),
          Row(
            children: [
              Expanded(
                child: FormInput(
                  currentFocus: questionItem.questionFN,
                  nextFocus: FocusNode(),
                  controller: questionItem.questionCon,
                  hintText: context.str?.enterQuestion,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return context.str?.questionIsRequired;
                    }
                    return null;
                  },
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 8.h,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                ),
              )
            ],
          ),
          SizedBox(height: 8.h),
          FormLabel(context.str?.questionType),
          FormCombobox<QuestionType>(
            items: QuestionType.values
                .map(
                  (e) => ComboboxItem<QuestionType>(
                    value: e,
                    label: e.value.capitalize,
                  ),
                )
                .toList(),
            controller: questionItem.typeCon,
            hintText: context.str?.selectQuestionType,
            currentFocus: questionItem.typeFN,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return context.str?.questionTypeIsRequired;
              }

              final isInList = QuestionType.values.any(
                (e) => e.value == value.toLowerCase(),
              );
              if (!isInList) {
                return context.str?.invalidOption;
              }
              return null;
            },
          )
        ],
      ),
    );
  }
}

class QuestionItem {
  QuestionModel question;

  final FocusNode questionFN, typeFN;
  final TextEditingController questionCon, typeCon;

  int order;

  QuestionItem({
    required this.question,
    required this.questionFN,
    required this.questionCon,
    required this.typeFN,
    required this.typeCon,
    this.order = 0,
  });

  void dispose() {
    questionFN.dispose();
    questionCon.dispose();
  }
}
