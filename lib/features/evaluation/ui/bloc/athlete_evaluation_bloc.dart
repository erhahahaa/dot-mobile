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
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetEvaluations>(_onGetEvaluations);
    on<_FilterEvaluations>(_onFilterEvaluations);
  }

  void _onClear(
    _Clear event,
    Emitter<AthleteEvaluationState> emit,
  ) =>
      emit(_Initial());

  void _onGetEvaluations(
    _GetEvaluations event,
    Emitter<AthleteEvaluationState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          AthleteEvaluationLoadedEvent(
            evaluations: success,
            filteredEvaluations: success,
          ),
        ),
      ),
    );
  }

  void _onFilterEvaluations(
    _FilterEvaluations event,
    Emitter<AthleteEvaluationState> emit,
  ) {
    emit(_Loading());
    state.maybeWhen(
      loaded: (data) {
        final finds = data.evaluations
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
          emit(_Failure('Question with ${event.query} not found'));
        } else {
          emit(
            _Loaded(
              AthleteEvaluationLoadedEvent(
                evaluations: data.evaluations,
                filteredEvaluations: finds,
              ),
            ),
          );
        }
      },
      orElse: () => emit(_Failure('Evaluation was empty')),
    );
  }
}
