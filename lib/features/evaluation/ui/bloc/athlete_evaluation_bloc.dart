import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'athlete_evaluation_bloc.freezed.dart';
part 'athlete_evaluation_event.dart';
part 'athlete_evaluation_state.dart';

@lazySingleton
class AthleteEvaluationBloc
    extends Bloc<AthleteEvaluationEvent, AthleteEvaluationState> {
  final GetAllEvaluationUsecase _getAllEvaluationUsecase;

  AthleteEvaluationBloc(
    this._getAllEvaluationUsecase,
  ) : super(const AthleteEvaluationStateInitial()) {
    on<AthleteEvaluationEventClear>(_onClear);
    on<AthleteEvaluationEventGetEvaluations>(_onGetEvaluations);
    on<AthleteEvaluationEventFilterEvaluations>(_onFilterEvaluations);
  }

  void _onClear(
    AthleteEvaluationEventClear event,
    Emitter<AthleteEvaluationState> emit,
  ) =>
      emit(const AthleteEvaluationStateInitial());

  void _onGetEvaluations(
    AthleteEvaluationEventGetEvaluations event,
    Emitter<AthleteEvaluationState> emit,
  ) async {
    emit(const AthleteEvaluationStateLoading());
    final res = await _getAllEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(AthleteEvaluationStateFailure(failure.message)),
      (success) => emit(
        AthleteEvaluationStateLoaded(
          evaluations: success,
          filteredEvaluations: success,
        ),
      ),
    );
  }

  void _onFilterEvaluations(
    AthleteEvaluationEventFilterEvaluations event,
    Emitter<AthleteEvaluationState> emit,
  ) {
    emit(const AthleteEvaluationStateLoading());
    state.maybeWhen(
      loaded: (evaluations, _) {
        final finds = evaluations
            .where(
              (evaluation) =>
                  evaluation.athlete?.name.toLowerCase().contains(
                        event.query.toLowerCase(),
                      ) ??
                  evaluation.coach?.name.toLowerCase().contains(
                        event.query.toLowerCase(),
                      ) ??
                  evaluation.exam?.title.toLowerCase().contains(
                        event.query.toLowerCase(),
                      ) ??
                  false,
            )
            .toList();
        if (finds.isEmpty) {
          emit(AthleteEvaluationStateFailure(
              'Question with ${event.query} not found'));
        } else {
          emit(
            AthleteEvaluationStateLoaded(
              evaluations: evaluations,
              filteredEvaluations: finds,
            ),
          );
        }
      },
      orElse: () => emit(
        const AthleteEvaluationStateFailure('Evaluation was empty'),
      ),
    );
  }
}
