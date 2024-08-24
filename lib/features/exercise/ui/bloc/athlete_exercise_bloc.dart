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
  ) : super(const AthleteExerciseStateInitial()) {
    on<AthleteExerciseEventClear>(_onClear);
    on<AthleteExerciseEventGetExercises>(_onGetExercises);
    on<AthleteExerciseEventFilterExercises>(_onFilterExercises);
  }

  void _onClear(
    AthleteExerciseEventClear event,
    Emitter<AthleteExerciseState> emit,
  ) =>
      emit(const AthleteExerciseStateInitial());

  void _onGetExercises(
    AthleteExerciseEventGetExercises event,
    Emitter<AthleteExerciseState> emit,
  ) async {
    emit(const AthleteExerciseStateLoading());
    final res = await _getAllExerciseUsecase.call(event.params);

    res.fold(
      (failure) => emit(AthleteExerciseStateFailure(failure.message)),
      (success) => emit(
        AthleteExerciseStateLoaded(
          exercises: success,
          filteredExercises: success,
        ),
      ),
    );
  }

  void _onFilterExercises(
    AthleteExerciseEventFilterExercises event,
    Emitter<AthleteExerciseState> emit,
  ) {
    emit(const AthleteExerciseStateLoading());

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
          emit(AthleteExerciseStateFailure(
              'Exercise with name ${event.query} not found'));
        } else {
          emit(
            AthleteExerciseStateLoaded(
              exercises: exercises,
              filteredExercises: finds,
            ),
          );
        }
      },
      orElse: () =>
          emit(const AthleteExerciseStateFailure('Exercise was empty')),
    );
  }
}
