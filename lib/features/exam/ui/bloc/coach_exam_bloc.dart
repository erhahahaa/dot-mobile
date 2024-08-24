import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coach_exam_bloc.freezed.dart';
part 'coach_exam_event.dart';
part 'coach_exam_state.dart';

@lazySingleton
class CoachExamBloc extends Bloc<CoachExamEvent, CoachExamState> {
  final GetAllExamUsecase _getAllExamUsecase;
  final CreateExamUsecase _createExamUsecase;
  final UpdateExamUsecase _updateExamUsecase;
  final DeleteExamUsecase _deleteExamUsecase;

  CoachExamBloc(
    this._getAllExamUsecase,
    this._createExamUsecase,
    this._updateExamUsecase,
    this._deleteExamUsecase,
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetExams>(_onGetExams);
    on<_FilterExams>(_onFilterExams);
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
  }

  void _onClear(
    _Clear event,
    Emitter<CoachExamState> emit,
  ) =>
      emit(_Initial());

  void _onGetExams(
    _GetExams event,
    Emitter<CoachExamState> emit,
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
    Emitter<CoachExamState> emit,
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

  void _onCreate(
    _Create event,
    Emitter<CoachExamState> emit,
  ) async {
    final res = await _createExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Created(success)),
    );
  }

  void _onUpdate(
    _Update event,
    Emitter<CoachExamState> emit,
  ) async {
    final res = await _updateExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Updated(success)),
    );
  }

  void _onDelete(
    _Delete event,
    Emitter<CoachExamState> emit,
  ) async {
    final res = await _deleteExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Deleted(success)),
    );
  }
}
