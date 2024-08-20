import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'athlete_question_bloc.freezed.dart';
part 'athlete_question_event.dart';
part 'athlete_question_state.dart';

@lazySingleton
class AthleteQuestionBloc
    extends Bloc<AthleteQuestionEvent, AthleteQuestionState> {
  final GetAllQuestionUsecase _getAllQuestionUsecase;

  AthleteQuestionBloc(
    this._getAllQuestionUsecase,
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetQuestions>(_onGetQuestions);
    on<_FilterQuestions>(_onFilterQuestions);
  }

  void _onClear(
    _Clear event,
    Emitter<AthleteQuestionState> emit,
  ) =>
      emit(_Initial());

  void _onGetQuestions(
    _GetQuestions event,
    Emitter<AthleteQuestionState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllQuestionUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          AthleteQuestionLoadedEvent(
            questions: success,
            filteredQuestions: success,
          ),
        ),
      ),
    );
  }

  void _onFilterQuestions(
    _FilterQuestions event,
    Emitter<AthleteQuestionState> emit,
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
            AthleteQuestionLoadedEvent(
              questions: data.questions,
              filteredQuestions: finds,
            ),
          ));
        }
      },
      orElse: () => emit(_Failure('Question not found')),
    );
  }
}
