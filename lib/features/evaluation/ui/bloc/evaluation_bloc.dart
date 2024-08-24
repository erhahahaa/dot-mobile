import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'evaluation_bloc.freezed.dart';
part 'evaluation_event.dart';
part 'evaluation_state.dart';

@lazySingleton
class EvaluationBloc extends Bloc<EvaluationEvent, EvaluationState> {
  final GetAllEvaluationUsecase _getAllEvaluationUsecase;
  final CreateEvaluationUsecase _createEvaluationUsecase;
  final UpdateEvaluationUsecase _updateEvaluationUsecase;
  final DeleteEvaluationUsecase _deleteEvaluationUsecase;

  EvaluationBloc(
    this._getAllEvaluationUsecase,
    this._createEvaluationUsecase,
    this._updateEvaluationUsecase,
    this._deleteEvaluationUsecase,
  ) : super(const EvaluationStateInitial()) {
    on<EvaluationEventClear>(_onClear);
    on<EvaluationEventGetEvaluations>(_onGetEvaluations);
    on<EvaluationEventFilterEvaluations>(_onFilterEvaluations);
    on<EvaluationEventSelectEvaluation>(_onSelectEvaluation);
    on<EvaluationEventCreate>(_onCreate);
    on<EvaluationEventUpdate>(_onUpdate);
    on<EvaluationEventDelete>(_onDelete);
  }

  void _onClear(
    EvaluationEventClear event,
    Emitter<EvaluationState> emit,
  ) =>
      emit(const EvaluationStateInitial());

  void _onGetEvaluations(
    EvaluationEventGetEvaluations event,
    Emitter<EvaluationState> emit,
  ) async {
    emit(const EvaluationStateLoading());
    final res = await _getAllEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(EvaluationStateFailure(failure.message)),
      (success) => emit(
        EvaluationStateLoaded(
          evaluations: success,
          filteredEvaluations: success,
        ),
      ),
    );
  }

  void _onFilterEvaluations(
    EvaluationEventFilterEvaluations event,
    Emitter<EvaluationState> emit,
  ) {
    emit(const EvaluationStateLoading());
    state.maybeWhen(
      loaded: (evaluations, _, __) {
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
          emit(
              EvaluationStateFailure('Question with ${event.query} not found'));
        } else {
          emit(
            EvaluationStateLoaded(
              evaluations: evaluations,
              filteredEvaluations: finds,
            ),
          );
        }
      },
      orElse: () => emit(
        const EvaluationStateFailure('Evaluation was empty'),
      ),
    );
  }

  void _onSelectEvaluation(
    EvaluationEventSelectEvaluation event,
    Emitter<EvaluationState> emit,
  ) {
    state.maybeWhen(
      loaded: (evaluations, filteredEvaluations, _) {
        emit(
          EvaluationStateLoaded(
            evaluations: evaluations,
            filteredEvaluations: filteredEvaluations,
            selectedEvaluation: event.evaluation,
          ),
        );
      },
      orElse: () => emit(
        const EvaluationStateFailure('Evaluation was empty'),
      ),
    );
  }

  void _onCreate(
    EvaluationEventCreate event,
    Emitter<EvaluationState> emit,
  ) async {
    final res = await _createEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(EvaluationStateFailure(failure.message)),
      (success) => emit(EvaluationStateCreated(success)),
    );
  }

  void _onUpdate(
    EvaluationEventUpdate event,
    Emitter<EvaluationState> emit,
  ) async {
    final res = await _updateEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(EvaluationStateFailure(failure.message)),
      (success) => emit(EvaluationStateUpdated(success)),
    );
  }

  void _onDelete(
    EvaluationEventDelete event,
    Emitter<EvaluationState> emit,
  ) async {
    final res = await _deleteEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(EvaluationStateFailure(failure.message)),
      (success) => emit(EvaluationStateDeleted(success)),
    );
  }
}
