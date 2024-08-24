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
  ) : super(const CoachExamStateInitial()) {
    on<CoachExamEventClear>(_onClear);
    on<CoachExamEventGetExams>(_onGetExams);
    on<CoachExamEventFilterExams>(_onFilterExams);
    on<CoachExamEventCreate>(_onCreate);
    on<CoachExamEventUpdate>(_onUpdate);
    on<CoachExamEventDelete>(_onDelete);
  }

  void _onClear(
    CoachExamEventClear event,
    Emitter<CoachExamState> emit,
  ) =>
      emit(const CoachExamStateInitial());

  void _onGetExams(
    CoachExamEventGetExams event,
    Emitter<CoachExamState> emit,
  ) async {
    emit(const CoachExamStateLoading());
    final res = await _getAllExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachExamStateFailure(failure.message)),
      (success) => emit(
        CoachExamStateLoaded(
          exams: success,
          filteredExams: success,
        ),
      ),
    );
  }

  void _onFilterExams(
    CoachExamEventFilterExams event,
    Emitter<CoachExamState> emit,
  ) {
    emit(const CoachExamStateLoading());
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
          emit(CoachExamStateFailure(
              'Exam with title ${event.query} not found'));
        } else {
          emit(
            CoachExamStateLoaded(
              exams: exams,
              filteredExams: finds,
            ),
          );
        }
      },
      orElse: () => emit(const CoachExamStateFailure('Exams was empty')),
    );
  }

  void _onCreate(
    CoachExamEventCreate event,
    Emitter<CoachExamState> emit,
  ) async {
    final res = await _createExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachExamStateFailure(failure.message)),
      (success) => emit(CoachExamStateCreated(success)),
    );
  }

  void _onUpdate(
    CoachExamEventUpdate event,
    Emitter<CoachExamState> emit,
  ) async {
    final res = await _updateExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachExamStateFailure(failure.message)),
      (success) => emit(CoachExamStateUpdated(success)),
    );
  }

  void _onDelete(
    CoachExamEventDelete event,
    Emitter<CoachExamState> emit,
  ) async {
    final res = await _deleteExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachExamStateFailure(failure.message)),
      (success) => emit(CoachExamStateDeleted(success)),
    );
  }
}
