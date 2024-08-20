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
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetQuestions>(_onGetQuestions);
    on<_FilterQuestions>(_onFilterQuestions);
    on<_CreateBatch>(_onCreateBatch);
    on<_UpdateBatch>(_onUpdateBatch);
    on<_Delete>(_onDelete);
  }

  void _onClear(
    _Clear event,
    Emitter<CoachQuestionState> emit,
  ) =>
      emit(_Initial());

  void _onGetQuestions(
    _GetQuestions event,
    Emitter<CoachQuestionState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllQuestionUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          CoachQuestionLoadedEvent(
            questions: success,
            filteredQuestions: success,
          ),
        ),
      ),
    );
  }

  void _onFilterQuestions(
    _FilterQuestions event,
    Emitter<CoachQuestionState> emit,
  ) {
    emit(_Loading());
    state.maybeWhen(
      loaded: (data) {
        final finds = data.questions
            .where(
              (question) => question.question.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(_Failure('Question with title ${event.query} not found'));
        } else {
          emit(_Loaded(
            CoachQuestionLoadedEvent(
              questions: data.questions,
              filteredQuestions: finds,
            ),
          ));
        }
      },
      orElse: () => emit(_Failure('Question not found')),
    );
  }

  void _onCreateBatch(
    _CreateBatch event,
    Emitter<CoachQuestionState> emit,
  ) async {
    final res = await _createQuestionBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_CreatedBatch(success)),
    );
  }

  void _onUpdateBatch(
    _UpdateBatch event,
    Emitter<CoachQuestionState> emit,
  ) async {
    final res = await _updateQuestionBatchUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_UpdatedBatch(success)),
    );
  }

  void _onDelete(
    _Delete event,
    Emitter<CoachQuestionState> emit,
  ) async {
    final res = await _deleteQuestionUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Deleted(success)),
    );
  }
}
