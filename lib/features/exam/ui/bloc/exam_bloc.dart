import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exam_bloc.freezed.dart';
part 'exam_event.dart';
part 'exam_state.dart';

@lazySingleton
class ExamBloc extends Bloc<ExamEvent, ExamState> {
  final GetAllExamUsecase _getAllExamUsecase;
  final CreateExamUsecase _createExamUsecase;
  final UpdateExamUsecase _updateExamUsecase;
  final DeleteExamUsecase _deleteExamUsecase;

  ExamBloc(
    this._getAllExamUsecase,
    this._createExamUsecase,
    this._updateExamUsecase,
    this._deleteExamUsecase,
  ) : super(const ExamStateInitial()) {
    on<ExamEventClear>(_onClear);
    on<ExamEventGetExams>(_onGetExams);
    on<ExamEventFilterExams>(_onFilterExams);
    on<ExamEventCreate>(_onCreate);
    on<ExamEventUpdate>(_onUpdate);
    on<ExamEventDelete>(_onDelete);
  }

  void _onClear(
    ExamEventClear event,
    Emitter<ExamState> emit,
  ) =>
      emit(const ExamStateInitial());

  void _onGetExams(
    ExamEventGetExams event,
    Emitter<ExamState> emit,
  ) async {
    emit(const ExamStateLoading());
    final res = await _getAllExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(ExamStateFailure(failure.message)),
      (success) => emit(
        ExamStateSuccess(
          exams: success,
          filteredExams: success,
        ),
      ),
    );
  }

  void _onFilterExams(
    ExamEventFilterExams event,
    Emitter<ExamState> emit,
  ) {
    emit(const ExamStateLoading());
    state.maybeWhen(
      success: (exams, _) {
        final finds = exams
            .where(
              (exam) => exam.title.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(ExamStateFailure('Exam with title ${event.query} not found'));
        } else {
          emit(
            ExamStateSuccess(
              exams: exams,
              filteredExams: finds,
            ),
          );
        }
      },
      orElse: () => emit(const ExamStateFailure('Exams was empty')),
    );
  }

  void _onCreate(
    ExamEventCreate event,
    Emitter<ExamState> emit,
  ) async {
    final res = await _createExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(ExamStateFailure(failure.message)),
      (success) => emit(ExamStateCreated(success)),
    );
  }

  void _onUpdate(
    ExamEventUpdate event,
    Emitter<ExamState> emit,
  ) async {
    final res = await _updateExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(ExamStateFailure(failure.message)),
      (success) => emit(ExamStateUpdated(success)),
    );
  }

  void _onDelete(
    ExamEventDelete event,
    Emitter<ExamState> emit,
  ) async {
    final res = await _deleteExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(ExamStateFailure(failure.message)),
      (success) => emit(ExamStateDeleted(success)),
    );
  }
}
