import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coach_exercise_bloc.freezed.dart';
part 'coach_exercise_event.dart';
part 'coach_exercise_state.dart';

@lazySingleton
class CoachExerciseBloc extends Bloc<CoachExerciseEvent, CoachExerciseState> {
  final GetAllExerciseUsecase _getAllExerciseUsecase;
  final CreateExerciseBatchUsecase _createExerciseBatchUsecase;
  final UpdateExerciseBatchUsecase _updateExerciseBatchUsecase;
  final DeleteExerciseUsecase _deleteExerciseUsecase;

  CoachExerciseBloc(
    this._getAllExerciseUsecase,
    this._createExerciseBatchUsecase,
    this._updateExerciseBatchUsecase,
    this._deleteExerciseUsecase,
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetExercises>(_onGetExercises);
    on<_FilterExercises>(_onFilterExercises);
    on<_CreateBatch>(_onCreateBatch);
    on<_UpdateBatch>(_onUpdateBatch);
    on<_Delete>(_onDelete);
  }
  void _onClear(
    _Clear event,
    Emitter<CoachExerciseState> emit,
  ) =>
      emit(_Initial());

  void _onGetExercises(
    _GetExercises event,
    Emitter<CoachExerciseState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllExerciseUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          exercises: success,
          filteredExercises: success,
        ),
      ),
    );
  }

  void _onFilterExercises(
    _FilterExercises event,
    Emitter<CoachExerciseState> emit,
  ) {
    emit(_Loading());

    state.maybeWhen(
      loaded: (exercises, _) {
        final finds = exercises
            .where(
              (exercise) => exercise.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(_Failure('Exercise with name ${event.query} not found'));
        } else {
          emit(
            _Loaded(
              exercises: exercises,
              filteredExercises: finds,
            ),
          );
        }
      },
      orElse: () => emit(_Failure('Exercise was empty')),
    );
  }

  void _onCreateBatch(
    _CreateBatch event,
    Emitter<CoachExerciseState> emit,
  ) async {
    final res = await _createExerciseBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_CreatedBatch(success)),
    );
  }

  void _onUpdateBatch(
    _UpdateBatch event,
    Emitter<CoachExerciseState> emit,
  ) async {
    final res = await _updateExerciseBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_UpdatedBatch(success)),
    );
  }

  void _onDelete(
    _Delete event,
    Emitter<CoachExerciseState> emit,
  ) async {
    final res = await _deleteExerciseUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Deleted(success)),
    );
  }
}
