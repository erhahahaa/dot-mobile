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
class UpsertEvaluationScreen extends StatefulWidget {
  const UpsertEvaluationScreen({super.key});

  @override
  State<UpsertEvaluationScreen> createState() => _UpsertEvaluationScreenState();
}

class _UpsertEvaluationScreenState extends BaseState<UpsertEvaluationScreen> {
  ExamModel? _exam;
  UserModel? _athlete;
  @override
  void initState() {
    super.initState();

    addSubscription(context.read<ExamBlocRead>().stream.listen((state) {
      final exam = state.whenOrNull(success: (_, __, item) => item);
      safeSetState(() {
        _exam = exam;
      });
    }));
    addSubscription(context.read<ClubMembersCubit>().stream.listen((state) {
      safeSetState(() {
        _athlete = state.selectedUser;
      });
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: TitleMedium(_exam?.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleSmall(context.str?.athleteDetail),
              ListViewBuilderTile(
                titleText: _athlete?.name,
                subtitleText: _athlete?.email,
                imageUrl: _athlete?.image,
              ),
              Gap(16.h),
              TitleSmall(context.str?.evaluation),
              Gap(8.h),
              const EvaluationForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class EvaluationForm extends StatefulWidget {
  const EvaluationForm({super.key});

  @override
  State<EvaluationForm> createState() => _EvaluationFormState();
}

class _EvaluationFormState extends State<EvaluationForm> {
  ClubModel? _club;
  UserModel? _athlete;
  ExamModel? _exam;
  EvaluationModel? _evaluation;

  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    final clubBloc = context.read<ClubBlocRead>();
    _club = clubBloc.state.whenOrNull(
      success: (items, _, selectedItem) => selectedItem,
    );

    final userBloc = context.read<ClubMembersCubit>();
    _athlete = userBloc.state.selectedUser;

    final examBloc = context.read<ExamBlocRead>();
    _exam = examBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );

    final evaluationBloc = context.read<EvaluationBlocRead>();
    _evaluation = evaluationBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _formKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBlocRead, BlocStateRead<QuestionModel>>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (items, filteredItems, selectedItem) {
            final mappedQuestions = items.map((question) {
              final controller = TextEditingController(
                text: _evaluation?.evaluations
                    .firstWhere(
                      (e) => e.questionId == question.id,
                      orElse: () => QuestionEvaluationModel(),
                    )
                    .answer,
              );
              final focusNode = FocusNode();
              return QuestionFormModel(
                question: question,
                controller: controller,
                focusNode: focusNode,
              );
            }).toList();

            return _buildForm(mappedQuestions);
          },
          failure: (message) => ErrorAlert(message),
          orElse: () => const Center(child: MoonCircularLoader()),
        );
      },
    );
  }

  Form _buildForm(List<QuestionFormModel> mappedQuestions) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            ListViewBuilder<QuestionFormModel>(
              items: mappedQuestions,
              padding: EdgeInsets.all(4.w),
              height: 0.6.sh,
              itemBuilder: (context, index, item) {
                final kbdType = item.question.type == QuestionType.numeric
                    ? TextInputType.number
                    : TextInputType.text;
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FormLabel('${index + 1}. ${item.question.question}'),
                      FormInput(
                        controller: item.controller,
                        currentFocus: item.focusNode,
                        keyboardType: kbdType,
                        hintText: item.question.question,
                        nextFocus: index == mappedQuestions.length - 1
                            ? null
                            : mappedQuestions[index + 1].focusNode,
                      ),
                    ],
                  ),
                );
              },
            ),
            Gap(16.h),
            _buildSubmitButton(mappedQuestions),
            Gap(128.h),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton(List<QuestionFormModel> mappedQuestions) {
    return BlocConsumer<EvaluationBlocWrite, BlocStateWrite<EvaluationModel>>(
      listener: (context, state) {
        state.whenOrNull(
          success: (item) {
            if (_evaluation == null) {
              context.successToast(
                title: context.str?.createSuccess,
                description: context.str?.evaluationCreatedSuccessfully,
              );
              context.read<EvaluationBlocRead>().add(
                    BlocEventRead.append(item),
                  );
            } else {
              context.successToast(
                title: context.str?.updateSuccess,
                description: context.str?.evaluationUpdatedSuccessfully,
              );

              context.read<EvaluationBlocRead>().add(
                    BlocEventRead.append(item),
                  );
            }

            context.read<EvaluationBlocRead>().add(
                  BlocEventRead.select(item),
                );
            context.read<ExamBlocRead>().add(
                  BlocEventRead.select(_exam),
                );
            context.router.back();
          },
          failure: (message) => context.errorToast(
            title: _evaluation == null
                ? context.str?.createEvaluationFailed
                : context.str?.updateEvaluationFailed,
            description: message,
          ),
        );
      },
      builder: (context, state) {
        return FormButton(
          onTap: () {
            if (_formKey.currentState?.validate() ?? false) {
              final coach = context.read<UserBloc>().state.whenOrNull(
                    success: (user, __) => user,
                  );

              if (_evaluation == null) {
                context.read<EvaluationBlocWrite>().add(
                      BlocEventWrite.create(
                        CreateEvaluationParams(
                          clubId: _club?.id ?? 0,
                          athleteId: _athlete?.id ?? 0,
                          coachId: coach?.id ?? 0,
                          examId: _exam?.id ?? 0,
                          evaluations: mappedQuestions
                              .map(
                                (e) => QuestionEvaluationModel(
                                  questionId: e.question.id,
                                  answer: e.controller.text,
                                  questionName: e.question.question,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    );
              } else {
                context.read<EvaluationBlocWrite>().add(
                      BlocEventWrite.update(
                        UpdateEvaluationParams(
                          id: _evaluation?.id ?? 0,
                          clubId: _club?.id ?? 0,
                          athleteId: _athlete?.id ?? 0,
                          coachId: coach?.id ?? 0,
                          examId: _exam?.id ?? 0,
                          evaluations: mappedQuestions
                              .map(
                                (e) => QuestionEvaluationModel(
                                  questionId: e.question.id,
                                  answer: e.controller.text,
                                  questionName: e.question.question,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    );
              }
            }
          },
          text: _evaluation == null
              ? context.str?.createEvaluation
              : context.str?.updateEvaluation,
          isLoading: state is BlocStateWriteLoading,
        );
      },
    );
  }
}

class QuestionFormModel {
  final QuestionModel question;
  final FocusNode focusNode;
  final TextEditingController controller;

  QuestionFormModel({
    required this.question,
    required this.focusNode,
    required this.controller,
  });
}
