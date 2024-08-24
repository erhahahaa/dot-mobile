import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'question_bloc.freezed.dart';
part 'question_event.dart';
part 'question_state.dart';

@lazySingleton
class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final GetAllQuestionUsecase _getAllQuestionUsecase;
  final CreateQuestionBatchUsecase _createQuestionBatchUsecase;
  final UpdateQuestionBatchUsecase _updateQuestionBatchUsecase;
  final DeleteQuestionUsecase _deleteQuestionUsecase;

  QuestionBloc(
    this._getAllQuestionUsecase,
    this._createQuestionBatchUsecase,
    this._updateQuestionBatchUsecase,
    this._deleteQuestionUsecase,
  ) : super(const QuestionStateInitial()) {
    on<QuestionEventClear>(_onClear);
    on<QuestionEventGetQuestions>(_onGetQuestions);
    on<QuestionEventFilterQuestions>(_onFilterQuestions);
    on<QuestionEventCreateBatch>(_onCreateBatch);
    on<QuestionEventUpdateBatch>(_onUpdateBatch);
    on<QuestionEventDelete>(_onDelete);
  }

  void _onClear(
    QuestionEventClear event,
    Emitter<QuestionState> emit,
  ) =>
      emit(const QuestionStateInitial());

  void _onGetQuestions(
    QuestionEventGetQuestions event,
    Emitter<QuestionState> emit,
  ) async {
    emit(const QuestionStateLoading());
    final res = await _getAllQuestionUsecase.call(event.params);

    res.fold(
      (failure) => emit(QuestionStateFailure(failure.message)),
      (success) => emit(
        QuestionStateLoaded(
          questions: success,
          filteredQuestions: success,
        ),
      ),
    );
  }

  void _onFilterQuestions(
    QuestionEventFilterQuestions event,
    Emitter<QuestionState> emit,
  ) {
    emit(const QuestionStateLoading());
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
          emit(QuestionStateFailure(
              'Question with title ${event.query} not found'));
        } else {
          emit(QuestionStateLoaded(
            questions: questions,
            filteredQuestions: finds,
          ));
        }
      },
      orElse: () => emit(const QuestionStateFailure('Question not found')),
    );
  }

  void _onCreateBatch(
    QuestionEventCreateBatch event,
    Emitter<QuestionState> emit,
  ) async {
    final res = await _createQuestionBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(QuestionStateFailure(failure.message)),
      (success) => emit(QuestionStateCreatedBatch(success)),
    );
  }

  void _onUpdateBatch(
    QuestionEventUpdateBatch event,
    Emitter<QuestionState> emit,
  ) async {
    final res = await _updateQuestionBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(QuestionStateFailure(failure.message)),
      (success) => emit(QuestionStateUpdatedBatch(success)),
    );
  }

  void _onDelete(
    QuestionEventDelete event,
    Emitter<QuestionState> emit,
  ) async {
    final res = await _deleteQuestionUsecase.call(event.params);

    res.fold(
      (failure) => emit(QuestionStateFailure(failure.message)),
      (success) => emit(QuestionStateDeleted(success)),
    );
  }
}
