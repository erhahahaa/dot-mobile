import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exercise_bloc.freezed.dart';
part 'exercise_event.dart';
part 'exercise_state.dart';

@lazySingleton
class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final GetAllExerciseUsecase _getAllExerciseUsecase;
  final CreateExerciseBatchUsecase _createExerciseBatchUsecase;
  final UpdateExerciseBatchUsecase _updateExerciseBatchUsecase;
  final DeleteExerciseUsecase _deleteExerciseUsecase;

  ExerciseBloc(
    this._getAllExerciseUsecase,
    this._createExerciseBatchUsecase,
    this._updateExerciseBatchUsecase,
    this._deleteExerciseUsecase,
  ) : super(const ExerciseStateInitial()) {
    on<ExerciseEventClear>(_onClear);
    on<ExerciseEventGetExercises>(_onGetExercises);
    on<ExerciseEventFilterExercises>(_onFilterExercises);
    on<ExerciseEventCreateBatch>(_onCreateBatch);
    on<ExerciseEventUpdateBatch>(_onUpdateBatch);
    on<ExerciseEventDelete>(_onDelete);
  }
  void _onClear(
    ExerciseEventClear event,
    Emitter<ExerciseState> emit,
  ) =>
      emit(const ExerciseStateInitial());

  void _onGetExercises(
    ExerciseEventGetExercises event,
    Emitter<ExerciseState> emit,
  ) async {
    emit(const ExerciseStateLoading());
    final res = await _getAllExerciseUsecase.call(event.params);

    res.fold(
      (failure) => emit(ExerciseStateFailure(failure.message)),
      (success) => emit(
        ExerciseStateSuccess(
          exercises: success,
          filteredExercises: success,
        ),
      ),
    );
  }

  void _onFilterExercises(
    ExerciseEventFilterExercises event,
    Emitter<ExerciseState> emit,
  ) {
    emit(const ExerciseStateLoading());

    state.maybeWhen(
      success: (exercises, _) {
        final finds = exercises
            .where(
              (exercise) => exercise.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(ExerciseStateFailure(
              'Exercise with name ${event.query} not found'));
        } else {
          emit(
            ExerciseStateSuccess(
              exercises: exercises,
              filteredExercises: finds,
            ),
          );
        }
      },
      orElse: () => emit(const ExerciseStateFailure('Exercise was empty')),
    );
  }

  void _onCreateBatch(
    ExerciseEventCreateBatch event,
    Emitter<ExerciseState> emit,
  ) async {
    final res = await _createExerciseBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(ExerciseStateFailure(failure.message)),
      (success) => emit(ExerciseStateCreatedBatch(success)),
    );
  }

  void _onUpdateBatch(
    ExerciseEventUpdateBatch event,
    Emitter<ExerciseState> emit,
  ) async {
    final res = await _updateExerciseBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(ExerciseStateFailure(failure.message)),
      (success) => emit(ExerciseStateUpdatedBatch(success)),
    );
  }

  void _onDelete(
    ExerciseEventDelete event,
    Emitter<ExerciseState> emit,
  ) async {
    final res = await _deleteExerciseUsecase.call(event.params);

    res.fold(
      (failure) => emit(ExerciseStateFailure(failure.message)),
      (success) => emit(ExerciseStateDeleted(success)),
    );
  }
}
