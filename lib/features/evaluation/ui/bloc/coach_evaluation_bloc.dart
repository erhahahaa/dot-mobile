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
  ) : super(const CoachEvaluationStateInitial()) {
    on<CoachEvaluationEventClear>(_onClear);
    on<CoachEvaluationEventGetEvaluations>(_onGetEvaluations);
    on<CoachEvaluationEventFilterEvaluations>(_onFilterEvaluations);
    on<CoachEvaluationEventCreate>(_onCreate);
    on<CoachEvaluationEventUpdate>(_onUpdate);
    on<CoachEvaluationEventDelete>(_onDelete);
  }

  void _onClear(
    CoachEvaluationEventClear event,
    Emitter<CoachEvaluationState> emit,
  ) =>
      emit(const CoachEvaluationStateInitial());

  void _onGetEvaluations(
    CoachEvaluationEventGetEvaluations event,
    Emitter<CoachEvaluationState> emit,
  ) async {
    emit(const CoachEvaluationStateLoading());
    final res = await _getAllEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachEvaluationStateFailure(failure.message)),
      (success) => emit(
        CoachEvaluationStateLoaded(
          evaluations: success,
          filteredEvaluations: success,
        ),
      ),
    );
  }

  void _onFilterEvaluations(
    CoachEvaluationEventFilterEvaluations event,
    Emitter<CoachEvaluationState> emit,
  ) {
    emit(const CoachEvaluationStateLoading());
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
          emit(CoachEvaluationStateFailure(
              'Question with ${event.query} not found'));
        } else {
          emit(
            CoachEvaluationStateLoaded(
              evaluations: evaluations,
              filteredEvaluations: finds,
            ),
          );
        }
      },
      orElse: () =>
          emit(const CoachEvaluationStateFailure('Evaluation was empty')),
    );
  }

  void _onCreate(
    CoachEvaluationEventCreate event,
    Emitter<CoachEvaluationState> emit,
  ) async {
    final res = await _createEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachEvaluationStateFailure(failure.message)),
      (success) => emit(CoachEvaluationStateCreated(success)),
    );
  }

  void _onUpdate(
    CoachEvaluationEventUpdate event,
    Emitter<CoachEvaluationState> emit,
  ) async {
    final res = await _updateEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachEvaluationStateFailure(failure.message)),
      (success) => emit(CoachEvaluationStateUpdated(success)),
    );
  }

  void _onDelete(
    CoachEvaluationEventDelete event,
    Emitter<CoachEvaluationState> emit,
  ) async {
    final res = await _deleteEvaluationUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachEvaluationStateFailure(failure.message)),
      (success) => emit(CoachEvaluationStateDeleted(success)),
    );
  }
}
