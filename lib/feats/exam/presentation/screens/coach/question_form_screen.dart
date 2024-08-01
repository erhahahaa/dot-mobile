import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class QuestionFormScreen extends StatefulWidget {
  final ExamModel exam;
  final List<QuestionModel>? questions;
  final ClubModel club;

  const QuestionFormScreen({
    super.key,
    required this.exam,
    this.questions,
    required this.club,
  });

  @override
  State<QuestionFormScreen> createState() => _QuestionFormScreenState();
}

class _QuestionFormScreenState extends State<QuestionFormScreen> {
  final List<QuestionItem> _questions = [];

  late GlobalKey<FormState> _formKey;

  late ScrollController _scrollController;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _scrollController = ScrollController();

    if (widget.questions != null) {
      for (final question in widget.questions!) {
        _questions.add(QuestionItem(
          question: question,
          questionFN: FocusNode(),
          questionCon: TextEditingController(text: question.question),
        ));
      }
    }

    super.initState();
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _scrollController.dispose();

    for (final question in _questions) {
      question.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionCubit, QuestionState>(
      listener: (context, state) {
        log.f('QuestionFormScreen listener state: $state');
        if (state.state == BaseState.success) {
          ToastModel(
            message: widget.questions == null
                ? context.str?.successCreateQuestion
                : context.str?.successUpdateQuestions,
            type: ToastType.success,
          ).fire(context);
          context.pop();
          context.read<QuestionCubit>().emitInitial();
        }
        if (state.state == BaseState.failure) {
          ToastModel(
            message: widget.questions == null
                ? context.str?.errorCreateQuestion
                : context.str?.errorUpdateQuestion,
            type: ToastType.error,
          ).fire(context);
          context.read<QuestionCubit>().emitInitial();
        }
      },
      builder: (context, state) {
        return Parent(
          floatingActionButton: FloatingButtonExtended(
            onPressed: () {
              _formKey.gotoError(_scrollController);

              if (_formKey.currentState!.validate()) {
                if (widget.questions == null) {
                  final List<CreateQuestionParams> questions = [];
                  for (final question in _questions) {
                    questions.add(CreateQuestionParams(
                      order: question.order,
                      examId: widget.exam.id,
                      mediaId: question.media?.id,
                      type: question.question.type,
                      question: question.questionCon.text,
                      options: question.question.options,
                    ));
                  }
                  context.read<QuestionCubit>().createBulk(questions);
                } else {
                  final List<UpdateQuestionParams> questions = [];
                  for (final question in _questions) {
                    questions.add(UpdateQuestionParams(
                      id: question.question.id,
                      order: question.order,
                      examId: widget.exam.id,
                      mediaId: question.media?.id,
                      type: question.question.type,
                      question: question.questionCon.text,
                      options: question.question.options,
                    ));
                  }
                  context.read<QuestionCubit>().updateBulk(questions);
                }
              }
            },
            icon: const Icon(Icons.save),
            text: 'Save',
            isDisabled: state.state == BaseState.loading,
            isLoading: state.state == BaseState.loading,
          ),
          body: RoundedTopBackground(
            title: widget.questions == null
                ? 'Create Questions'
                : '${widget.exam.title} Questions',
            child: Form(
              key: _formKey,
              child: ReorderableListView(
                proxyDecorator: (child, index, animation) => ProxyDecorator(
                  index: index,
                  animation: animation,
                  child: child,
                ),
                scrollController: _scrollController,
                footer: AddItemButton(
                  text: 'Add Question',
                  onTap: () {
                    setState(
                      () {
                        _questions.add(
                          QuestionItem(
                            question: QuestionModel(
                              examId: widget.exam.id,
                              question: '',
                              type: QuestionType.essay,
                            ),
                            questionFN: FocusNode(),
                            questionCon: TextEditingController(),
                            order: _questions.length,
                          ),
                        );
                      },
                    );
                  },
                ),
                children: [
                  for (int index = 0; index < _questions.length; index++)
                    EightContainer(
                      key: Key('questionItem_$index'),
                      padding: EdgeInsets.all(8.w),
                      margin: EdgeInsets.only(bottom: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              H2Text('Question ${index + 1}'),
                              Spacer(),
                              IconButton(
                                key: Key('deleteIcon_$index'),
                                icon: Icon(
                                  Icons.delete,
                                  color: context.theme.colorScheme.error,
                                  size: 24.sp,
                                ),
                                onPressed: () {
                                  if (_questions[index].question.id != 0) {
                                    context.read<QuestionCubit>().delete(
                                          ByIdParams(
                                              id: _questions[index]
                                                  .question
                                                  .id
                                                  .toString()),
                                        );
                                  }
                                  setState(() {
                                    _questions.removeAt(index);
                                  });
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
                          SizedBox(height: 8.h),
                          TextF(
                            key: Key('questionName_$index'),
                            currFocusNode: _questions[index].questionFN,
                            controller: _questions[index].questionCon,
                            isHintVisible: false,
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter question';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Question',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              hintText: 'Enter question',
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 8.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ],
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
            ),
          ),
        );
      },
    );
  }
}

class QuestionItem {
  QuestionModel question;
  MediaModel? media;

  final FocusNode questionFN;
  final TextEditingController questionCon;

  int order;

  QuestionItem({
    required this.question,
    required this.questionFN,
    required this.questionCon,
    this.media,
    this.order = 0,
  });

  void dispose() {
    questionFN.dispose();
    questionCon.dispose();

    media = null;
  }
}
