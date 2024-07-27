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

  Future<void> init() async {}

  void _emitInitial() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        state: BaseState.initial,
      ),
    );
  }

  Future<void> getAllMedia({required int clubId}) async {
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

      Future.delayed(const Duration(seconds: 2), () {
        _emitInitial();
      });
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
        ),
      );

      Future.delayed(const Duration(seconds: 2), () {
        _emitInitial();
      });
    });
  }

  Future<void> update(List<UpdateProgramExerciseParams> params) async {
    final res = await _exerciseRepo.update(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );

      Future.delayed(const Duration(seconds: 2), () {
        _emitInitial();
      });
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
        ),
      );

      Future.delayed(const Duration(seconds: 2), () {
        _emitInitial();
      });
    });
  }

  Future<void> delete(ByIdParams params) async {
    final res = await _exerciseRepo.delete(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );

      Future.delayed(const Duration(seconds: 2), () {
        _emitInitial();
      });
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
        ),
      );

      Future.delayed(const Duration(seconds: 2), () {
        _emitInitial();
      });
    });
  }

  Future<void> getById(ByIdParams params) async {
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
        ),
      );
    });
  }
}
