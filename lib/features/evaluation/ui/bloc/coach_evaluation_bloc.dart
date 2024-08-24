import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coach_evaluation_bloc.freezed.dart';
part 'coach_evaluation_event.dart';
part 'coach_evaluation_state.dart';

@lazySingleton
class CoachEvaluationBloc
    extends Bloc<CoachEvaluationEvent, CoachEvaluationState> {
  final GetAllEvaluationUsecase _getAllEvaluationUsecase;
  final CreateEvaluationUsecase _createEvaluationUsecase;
  final UpdateEvaluationUsecase _updateEvaluationUsecase;
  final DeleteEvaluationUsecase _deleteEvaluationUsecase;

  CoachEvaluationBloc(
    this._getAllEvaluationUsecase,
    this._createEvaluationUsecase,
    this._updateEvaluationUsecase,
    this._deleteEvaluationUsecase,
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetEvaluations>(_onGetEvaluations);
    on<_FilterEvaluations>(_onFilterEvaluations);
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
  }

  void _onClear(
    _Clear event,
    Emitter<CoachEvaluationState> emit,
  ) =>
      emit(_Initial());

  void _onGetEvaluations(
    _GetEvaluations event,
    Emitter<CoachEvaluationState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          evaluations: success,
          filteredEvaluations: success,
        ),
      ),
    );
  }

  void _onFilterEvaluations(
    _FilterEvaluations event,
    Emitter<CoachEvaluationState> emit,
  ) {
    emit(_Loading());
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
          emit(_Failure('Question with ${event.query} not found'));
        } else {
          emit(
            _Loaded(
              evaluations: evaluations,
              filteredEvaluations: finds,
            ),
          );
        }
      },
      orElse: () => emit(_Failure('Evaluation was empty')),
    );
  }

  void _onCreate(
    _Create event,
    Emitter<CoachEvaluationState> emit,
  ) async {
    final res = await _createEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Created(success)),
    );
  }

  void _onUpdate(
    _Update event,
    Emitter<CoachEvaluationState> emit,
  ) async {
    final res = await _updateEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Updated(success)),
    );
  }

  void _onDelete(
    _Delete event,
    Emitter<CoachEvaluationState> emit,
  ) async {
    final res = await _deleteEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Deleted(success)),
    );
  }
}
