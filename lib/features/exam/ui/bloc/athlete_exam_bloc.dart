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
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetExams>(_onGetExams);
    on<_FilterExams>(_onFilterExams);
  }

  void _onClear(
    _Clear event,
    Emitter<AthleteExamState> emit,
  ) =>
      emit(_Initial());

  void _onGetExams(
    _GetExams event,
    Emitter<AthleteExamState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          exams: success,
          filteredExams: success,
        ),
      ),
    );
  }

  void _onFilterExams(
    _FilterExams event,
    Emitter<AthleteExamState> emit,
  ) {
    emit(_Loading());
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
          emit(_Failure('Exam with title ${event.query} not found'));
        } else {
          emit(
            _Loaded(
              exams: exams,
              filteredExams: finds,
            ),
          );
        }
      },
      orElse: () => emit(_Failure('Exams was empty')),
    );
  }
}
