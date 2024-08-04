import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_cubit.freezed.dart';
part 'question_state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  final QuestionRepo _questionRepo; 

  QuestionCubit(
    this._questionRepo, 
  ) : super(const QuestionState());

  void clear() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: const QuestionState(),
    );
  }

  void emitInitial() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.initial,
        ),
      );

  void emitLoading() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.loading),
      );

  Future<void> init() async {}

  Future<void> createBulk(List<CreateQuestionParams> params) async {
    emitLoading();
    final res = await _questionRepo.createBulk(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
        ),
      );
    });
  }

  Future<void> updateBulk(List<UpdateQuestionParams> params) async {
    emitLoading();
    final res = await _questionRepo.updateBulk(params);

    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
      },
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
          ),
        );
      },
    );
  }

  Future<void> delete(ByIdParams params) async {
    emitLoading();
    final res = await _questionRepo.delete(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
        ),
      );
    });
  }

  Future<void> getById(ByIdParams params) async {
    emitLoading();
    final res = await _questionRepo.getById(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
        ),
      );
    });
  }

  Future<void> getAll(PaginationParams params, int examId) async {
    emitLoading();
    final res = await _questionRepo.getAll(params, examId);

    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          questions: r,
        ),
      );
    });
  }
}
