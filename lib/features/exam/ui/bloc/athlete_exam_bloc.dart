import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'athlete_exam_bloc.freezed.dart';
part 'athlete_exam_event.dart';
part 'athlete_exam_state.dart';

@lazySingleton
class AthleteExamBloc extends Bloc<AthleteExamEvent, AthleteExamState> {
  final GetAllExamUsecase _getAllExamUsecase;

  AthleteExamBloc(
    this._getAllExamUsecase,
  ) : super(const AthleteExamStateInitial()) {
    on<AthleteExamEventClear>(_onClear);
    on<AthleteExamEventGetExams>(_onGetExams);
    on<AthleteExamEventFilterExams>(_onFilterExams);
  }

  void _onClear(
    AthleteExamEventClear event,
    Emitter<AthleteExamState> emit,
  ) =>
      emit(const AthleteExamStateInitial());

  void _onGetExams(
    AthleteExamEventGetExams event,
    Emitter<AthleteExamState> emit,
  ) async {
    emit(const AthleteExamStateLoading());
    final res = await _getAllExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(AthleteExamStateFailure(failure.message)),
      (success) => emit(
        AthleteExamStateLoaded(
          exams: success,
          filteredExams: success,
        ),
      ),
    );
  }

  void _onFilterExams(
    AthleteExamEventFilterExams event,
    Emitter<AthleteExamState> emit,
  ) {
    emit(const AthleteExamStateLoading());
    state.maybeWhen(
      loaded: (exams, _) {
        final finds = exams
            .where(
              (exam) => exam.title.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(
            AthleteExamStateFailure('Exam with title ${event.query} not found'),
          );
        } else {
          emit(
            AthleteExamStateLoaded(
              exams: exams,
              filteredExams: finds,
            ),
          );
        }
      },
      orElse: () => emit(const AthleteExamStateFailure('Exams was empty')),
    );
  }
}
