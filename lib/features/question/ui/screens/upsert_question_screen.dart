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

class _UpsertQuestionScreenState extends State<UpsertQuestionScreen> {
  ExamModel? _exam;
  ClubModel? club;
  final List<QuestionItem> _questions = [];

  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    final clubBloc = context.read<ClubBlocRead>();
    club = clubBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );

    final examBloc = context.read<ExamBlocRead>();
    _exam = examBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );

    final questionBloc = context.read<QuestionBlocRead>();
    final questions = questionBloc.state.whenOrNull(
      success: (items, _, __) => items,
    );
    if (questions != null) {
      _questions.addAll(questions.map((question) {
        return QuestionItem(
          question: question,
          questionFN: FocusNode(),
          questionCon: TextEditingController(text: question.question),
          order: question.order,
        );
      }));
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
    return ParentWithSearchAndScrollController(
      builder: (child, search, scroll, showScrollToTopButton) {
        return Scaffold(
          appBar: AppBar(
            title: Text('${_exam?.title} Questions'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.router.back();
              },
            ),
          ),
          floatingActionButton: BlocConsumer<QuestionBlocWrite,
              BlocStateWrite<List<QuestionModel>>>(
            listener: (context, state) {
              state.whenOrNull(
                success: (item) {
                  context.successToast(
                    title: 'Success',
                    description: 'Question saved successfully',
                  );
                  context.router.back();
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
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  BackTopButton(
                    show: showScrollToTopButton,
                    onPressed: () {
                      scroll.animateTo(
                        0,
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  Gap(8.h),
                  FloatingActionButtonExtended(
                    heroTag: 'save_question_button_$hashCode',
                    isLoading: state is BlocStateWriteLoading,
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        if (_questions.isNotEmpty) {
                          final params = _questions.map((question) {
                            return CreateQuestionParams(
                              order: question.order,
                              examId: _exam?.id ?? 0,
                              type: question.question.type,
                              question: question.question.question,
                              options: question.question.options,
                            );
                          }).toList();

                          context.read<QuestionBlocWrite>().add(
                                BlocEventWrite.create(params),
                              );
                        } else {
                          final params = _questions.map((question) {
                            return UpdateQuestionParams(
                              id: question.question.id,
                              order: question.order,
                              examId: _exam?.id ?? 0,
                              type: question.question.type,
                              question: question.question.question,
                              options: question.question.options,
                            );
                          }).toList();

                          context.read<QuestionBlocWrite>().add(
                                BlocEventWrite.update(params),
                              );
                        }
                      }
                    },
                    icon: const Icon(Icons.save),
                    label: const Text('Save'),
                  ),
                ],
              );
            },
          ),
          body: Padding(
            padding: EdgeInsets.all(8.w),
            child: _buildForm(context, scroll),
          ),
        );
      },
    );
  }

  Widget _buildForm(BuildContext context, ScrollController scroll) {
    return BlocConsumer<QuestionBlocRead, BlocStateRead<QuestionModel>>(
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
                scrollController: scroll,
                proxyDecorator: (child, index, animation) => ProxyDecorator(
                  index: index,
                  animation: animation,
                  child: child,
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
                  const Text('Loading questions...'),
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
        children: [
          Row(
            children: [
              Text('Question ${index + 1}'),
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
                      if (_questions[index].question.id != 0) {}
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
          const FormLabel('Question'),
          Row(
            children: [
              Expanded(
                child: FormInput(
                  currentFocus: questionItem.questionFN,
                  nextFocus: FocusNode(),
                  controller: questionItem.questionCon,
                  hintText: 'Enter the question',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a question';
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
          DropdownButtonFormField<QuestionType>(
            value: questionItem.question.type,
            items: QuestionType.values.map((e) {
              return DropdownMenuItem(
                value: e,
                child: Text(e.name),
              );
            }).toList(),
            onChanged: (QuestionType? value) {
              if (value == null) return;
              setState(() {
                questionItem.question =
                    questionItem.question.copyWith(type: value);
              });
            },
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 8.h,
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
        ],
      ),
    );
  }
}

class QuestionItem {
  QuestionModel question;

  final FocusNode questionFN;
  final TextEditingController questionCon;

  int order;

  QuestionItem({
    required this.question,
    required this.questionFN,
    required this.questionCon,
    this.order = 0,
  });

  void dispose() {
    questionFN.dispose();
    questionCon.dispose();
  }
}
