import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_cubit.freezed.dart';
part 'exercise_state.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  final ExerciseRepo _exerciseRepo;
  final MediaRepo _mediaRepo;
  ExerciseCubit(
    this._exerciseRepo,
    this._mediaRepo,
  ) : super(const ExerciseState());

  void clear() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: const ExerciseState(),
    );
  }

  void emitInitial() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.initial),
      );

  void emitLoading() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.loading),
      );

  Future<void> init() async {}

  Future<void> getAllMedia({required int clubId}) async {
    emitLoading();
    for (final parent in MediaParent.values) {
      final res = await _mediaRepo.getAll(
        const PaginationParams(),
        parent,
        clubId,
      );
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
            medias: r,
          ),
        );
      });
    }
  }

  Future<void> create(List<CreateProgramExerciseParams> params) async {
    emitLoading();
    final res = await _exerciseRepo.create(params);
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

  Future<void> updateBulk(List<UpdateProgramExerciseParams> params) async {
    emitLoading();
    final res = await _exerciseRepo.updateBulk(params);
    res.fold((l) {
      log.e('updateBulk error: ${l.message}');
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

  Future<void> delete(ByIdParams params) async {
    await _exerciseRepo.delete(params);
  }

  Future<void> getById(ByIdParams params) async {
    emitLoading();
    final res = await _exerciseRepo.getById(params);

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

  Future<void> getAll(
    PaginationParams params,
    int programId,
  ) async {
    emitLoading();
    final res = await _exerciseRepo.getAll(params, programId);
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
          exercises: r,
        ),
      );
    });
  }
}
