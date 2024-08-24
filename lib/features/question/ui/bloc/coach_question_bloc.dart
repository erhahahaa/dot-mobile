import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coach_question_bloc.freezed.dart';
part 'coach_question_event.dart';
part 'coach_question_state.dart';

@lazySingleton
class CoachQuestionBloc extends Bloc<CoachQuestionEvent, CoachQuestionState> {
  final GetAllQuestionUsecase _getAllQuestionUsecase;
  final CreateQuestionBatchUsecase _createQuestionBatchUsecase;
  final UpdateQuestionBatchUsecase _updateQuestionBatchUsecase;
  final DeleteQuestionUsecase _deleteQuestionUsecase;

  CoachQuestionBloc(
    this._getAllQuestionUsecase,
    this._createQuestionBatchUsecase,
    this._updateQuestionBatchUsecase,
    this._deleteQuestionUsecase,
  ) : super(const CoachQuestionStateInitial()) {
    on<CoachQuestionEventClear>(_onClear);
    on<CoachQuestionEventGetQuestions>(_onGetQuestions);
    on<CoachQuestionEventFilterQuestions>(_onFilterQuestions);
    on<CoachQuestionEventCreateBatch>(_onCreateBatch);
    on<CoachQuestionEventUpdateBatch>(_onUpdateBatch);
    on<CoachQuestionEventDelete>(_onDelete);
  }

  void _onClear(
    CoachQuestionEventClear event,
    Emitter<CoachQuestionState> emit,
  ) =>
      emit(const CoachQuestionStateInitial());

  void _onGetQuestions(
    CoachQuestionEventGetQuestions event,
    Emitter<CoachQuestionState> emit,
  ) async {
    emit(const CoachQuestionStateLoading());
    final res = await _getAllQuestionUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachQuestionStateFailure(failure.message)),
      (success) => emit(
        CoachQuestionStateLoaded(
          questions: success,
          filteredQuestions: success,
        ),
      ),
    );
  }

  void _onFilterQuestions(
    CoachQuestionEventFilterQuestions event,
    Emitter<CoachQuestionState> emit,
  ) {
    emit(const CoachQuestionStateLoading());
    state.maybeWhen(
      loaded: (questions, _) {
        final finds = questions
            .where(
              (question) => question.question.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(CoachQuestionStateFailure(
              'Question with title ${event.query} not found'));
        } else {
          emit(CoachQuestionStateLoaded(
            questions: questions,
            filteredQuestions: finds,
          ));
        }
      },
      orElse: () => emit(const CoachQuestionStateFailure('Question not found')),
    );
  }

  void _onCreateBatch(
    CoachQuestionEventCreateBatch event,
    Emitter<CoachQuestionState> emit,
  ) async {
    final res = await _createQuestionBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachQuestionStateFailure(failure.message)),
      (success) => emit(CoachQuestionStateCreatedBatch(success)),
    );
  }

  void _onUpdateBatch(
    CoachQuestionEventUpdateBatch event,
    Emitter<CoachQuestionState> emit,
  ) async {
    final res = await _updateQuestionBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachQuestionStateFailure(failure.message)),
      (success) => emit(CoachQuestionStateUpdatedBatch(success)),
    );
  }

  void _onDelete(
    CoachQuestionEventDelete event,
    Emitter<CoachQuestionState> emit,
  ) async {
    final res = await _deleteQuestionUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachQuestionStateFailure(failure.message)),
      (success) => emit(CoachQuestionStateDeleted(success)),
    );
  }
}
