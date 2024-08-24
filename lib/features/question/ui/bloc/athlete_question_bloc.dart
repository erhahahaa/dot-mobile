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
  ) : super(const AthleteQuestionStateInitial()) {
    on<AthleteQuestionEventClear>(_onClear);
    on<AthleteQuestionEventGetQuestions>(_onGetQuestions);
    on<AthleteQuestionEventFilterQuestions>(_onFilterQuestions);
  }

  void _onClear(
    AthleteQuestionEventClear event,
    Emitter<AthleteQuestionState> emit,
  ) =>
      emit(const AthleteQuestionStateInitial());

  void _onGetQuestions(
    AthleteQuestionEventGetQuestions event,
    Emitter<AthleteQuestionState> emit,
  ) async {
    emit(const AthleteQuestionStateLoading());
    final res = await _getAllQuestionUsecase.call(event.params);

    res.fold(
      (failure) => emit(AthleteQuestionStateFailure(failure.message)),
      (success) => emit(
        AthleteQuestionStateLoaded(
          questions: success,
          filteredQuestions: success,
        ),
      ),
    );
  }

  void _onFilterQuestions(
    AthleteQuestionEventFilterQuestions event,
    Emitter<AthleteQuestionState> emit,
  ) {
    emit(const AthleteQuestionStateLoading());
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
          emit(AthleteQuestionStateFailure(
              'Question with title ${event.query} not found'));
        } else {
          emit(AthleteQuestionStateLoaded(
            questions: questions,
            filteredQuestions: finds,
          ));
        }
      },
      orElse: () =>
          emit(const AthleteQuestionStateFailure('Question not found')),
    );
  }
}
