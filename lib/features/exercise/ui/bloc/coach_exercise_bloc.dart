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
  ) : super(const CoachExerciseStateInitial()) {
    on<CoachExerciseEventClear>(_onClear);
    on<CoachExerciseEventGetExercises>(_onGetExercises);
    on<CoachExerciseEventFilterExercises>(_onFilterExercises);
    on<CoachExerciseEventCreateBatch>(_onCreateBatch);
    on<CoachExerciseEventUpdateBatch>(_onUpdateBatch);
    on<CoachExerciseEventDelete>(_onDelete);
  }
  void _onClear(
    CoachExerciseEventClear event,
    Emitter<CoachExerciseState> emit,
  ) =>
      emit(const CoachExerciseStateInitial());

  void _onGetExercises(
    CoachExerciseEventGetExercises event,
    Emitter<CoachExerciseState> emit,
  ) async {
    emit(const CoachExerciseStateLoading());
    final res = await _getAllExerciseUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachExerciseStateFailure(failure.message)),
      (success) => emit(
        CoachExerciseStateLoaded(
          exercises: success,
          filteredExercises: success,
        ),
      ),
    );
  }

  void _onFilterExercises(
    CoachExerciseEventFilterExercises event,
    Emitter<CoachExerciseState> emit,
  ) {
    emit(const CoachExerciseStateLoading());

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
          emit(CoachExerciseStateFailure(
              'Exercise with name ${event.query} not found'));
        } else {
          emit(
            CoachExerciseStateLoaded(
              exercises: exercises,
              filteredExercises: finds,
            ),
          );
        }
      },
      orElse: () => emit(const CoachExerciseStateFailure('Exercise was empty')),
    );
  }

  void _onCreateBatch(
    CoachExerciseEventCreateBatch event,
    Emitter<CoachExerciseState> emit,
  ) async {
    final res = await _createExerciseBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachExerciseStateFailure(failure.message)),
      (success) => emit(CoachExerciseStateCreatedBatch(success)),
    );
  }

  void _onUpdateBatch(
    CoachExerciseEventUpdateBatch event,
    Emitter<CoachExerciseState> emit,
  ) async {
    final res = await _updateExerciseBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachExerciseStateFailure(failure.message)),
      (success) => emit(CoachExerciseStateUpdatedBatch(success)),
    );
  }

  void _onDelete(
    CoachExerciseEventDelete event,
    Emitter<CoachExerciseState> emit,
  ) async {
    final res = await _deleteExerciseUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachExerciseStateFailure(failure.message)),
      (success) => emit(CoachExerciseStateDeleted(success)),
    );
  }
}
