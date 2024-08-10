import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_cubit.freezed.dart';
part 'evaluation_state.dart';

class EvaluationCubit extends Cubit<EvaluationState> {
  final EvaluationRepo _evaluationRepo;
  final QuestionRepo _questionRepo;
  final UserRepo _userRepo;
  final ClubRepo _clubRepo;
  final ExamRepo _examRepo;

  EvaluationCubit(
    this._evaluationRepo,
    this._questionRepo,
    this._userRepo,
    this._clubRepo,
    this._examRepo,
  ) : super(const EvaluationState());

  void clear() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: const EvaluationState(),
      );

  void emitInitial() => safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        state: BaseState.initial,
      ));

  void emitLoading() => safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        state: BaseState.loading,
      ));

  Future<void> init({int? examId}) async {
    await getUser();
    if (examId == null) return;
    await getQuestions(examId: examId);
  }

  Future<void> getUser() async {
    emitLoading();
    final res = await _userRepo.getMe();
    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            failure: l,
          ),
        );
      },
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            coach: UserModel.fromEntity(r),
          ),
        );
      },
    );
  }

  Future<void> getEvaluations(List<int> examIds) async {
    emitLoading();
    for (final id in examIds) {
      final res = await _evaluationRepo.getAll(const PaginationParams(), id);
      res.fold(
        (l) {
          safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              evaluations: [],
              filteredEvaluations: [],
            ),
          );
        },
        (r) {
          final evaluations = List<EvaluationModel>.from(state.evaluations);
          final find = evaluations.where((element) => element.exam?.id == id);
          if (find.isNotEmpty) {
            evaluations.removeWhere((element) => element.exam?.id == id);
          }
          evaluations.addAll(r);
          safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              state: BaseState.initial,
              evaluations: evaluations,
              filteredEvaluations: evaluations,
            ),
          );
        },
      );
    }
  }

  void searchEvaluation(String query) {
    final filteredByAthleteName = state.evaluations
        .where((element) => (element.athlete?.name ?? '')
            .toLowerCase()
            .contains(query.toLowerCase()))
        .toList();
    final filteredByCoachName = state.evaluations
        .where((element) => (element.coach?.name ?? '')
            .toLowerCase()
            .contains(query.toLowerCase()))
        .toList();
    final filteredByExamName = state.evaluations.where((element) =>
        (element.exam?.title ?? '')
            .toLowerCase()
            .contains(query.toLowerCase()));

    final filteredEvaluations = {
      ...filteredByAthleteName,
      ...filteredByCoachName,
      ...filteredByExamName
    }.toList();

    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        filteredEvaluations: filteredEvaluations,
      ),
    );
  }

  Future<void> getQuestions({required int examId}) async {
    final question =
        await _questionRepo.getAll(const PaginationParams(), examId);
    final evaluation =
        await _evaluationRepo.getAll(const PaginationParams(), examId);

    question.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            failure: l,
          ),
        );
      },
      (r) {
        final List<EvaluationModel> evaluations = [];
        evaluation.fold(
          (l) {},
          (r) {
            evaluations.addAll(r);
          },
        );
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.initial,
            questions: r.map(
              (e) {
                return QuestionModelWithController(
                  question: e,
                  controller: TextEditingController(),
                  focusNode: FocusNode(),
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }

  Future<void> geAthleteEvaluation() async {
    final res = await _clubRepo.getAll(const PaginationParams());

    res.fold((_) => null, (clubs) async {
      List<int> examIds = [];
      for (final club in clubs) {
        final exam = await _examRepo.getAll(const PaginationParams(), club.id);
        exam.fold((_) => null, (exams) {
          examIds.addAll(exams.map((e) => e.id));
        });
      }
      await getEvaluations(examIds);
    });
  }

  Future<void> create(CreateEvaluationParams params) async {
    emitLoading();
    final res = await _evaluationRepo.create(params);

    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            failure: l,
          ),
        );
      },
      (r) {
        final evaluations = List<EvaluationModel>.from(state.evaluations);
        final find = evaluations.where((element) => element.id == r.id);
        if (find.isNotEmpty) {
          evaluations.removeWhere((element) => element.id == r.id);
        }
        evaluations.add(r);

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            evaluations: evaluations,
          ),
        );
      },
    );
  }

  Future<void> update(UpdateEvaluationParams params) async {
    emitLoading();
    final res = await _evaluationRepo.update(params);

    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            failure: l,
          ),
        );
      },
      (r) {
        final evaluations = List<EvaluationModel>.from(state.evaluations);
        final index =
            evaluations.indexWhere((element) => element.id == params.id);
        if (index != -1) {
          evaluations[index] = evaluations[index].copyWith(
            evaluations: params.evaluations,
          );
        }
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            evaluations: evaluations,
          ),
        );
      },
    );
  }

  void delete(EvaluationModel evaluation) async {
    final res =
        await _evaluationRepo.delete(ByIdParams(id: evaluation.id.toString()));
    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            failure: l,
          ),
        );
      },
      (r) {
        final evaluations = List<EvaluationModel>.from(state.evaluations);
        evaluations.removeWhere((element) => element.id == evaluation.id);

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            evaluations: evaluations,
            filteredEvaluations: evaluations,
          ),
        );
      },
    );
  }
}
