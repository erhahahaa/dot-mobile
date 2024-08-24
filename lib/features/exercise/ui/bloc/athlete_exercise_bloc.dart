import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'athlete_exercise_bloc.freezed.dart';
part 'athlete_exercise_event.dart';
part 'athlete_exercise_state.dart';

@lazySingleton
class AthleteExerciseBloc
    extends Bloc<AthleteExerciseEvent, AthleteExerciseState> {
  final GetAllExerciseUsecase _getAllExerciseUsecase;

  AthleteExerciseBloc(
    this._getAllExerciseUsecase,
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetExercises>(_onGetExercises);
    on<_FilterExercises>(_onFilterExercises);
  }

  void _onClear(
    _Clear event,
    Emitter<AthleteExerciseState> emit,
  ) =>
      emit(_Initial());

  void _onGetExercises(
    _GetExercises event,
    Emitter<AthleteExerciseState> emit,
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
    Emitter<AthleteExerciseState> emit,
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
}
