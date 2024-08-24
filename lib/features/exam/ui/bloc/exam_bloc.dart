import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExamBlocRead extends BlocRead<ExamModel> {
  final GetAllExamUsecase _getAllExamUsecase;

  ExamBlocRead(this._getAllExamUsecase) : super(const BlocStateReadInitial()) {
    on<BlocEventReadClear<ExamModel>>(onClear);
    on<BlocEventReadGet<ExamModel>>(onGet);
    on<BlocEventReadSelect<ExamModel>>(onSelect);
    on<BlocEventReadFilter<ExamModel>>(onFilter);
  }

  @override
  void onGet(
    BlocEventReadGet event,
    Emitter<BlocStateRead<ExamModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocStateRead.failure('Id required'));
    }
    emit(const BlocStateReadLoading());

    final res = await _getAllExamUsecase.call(
      GetAllExamParams(clubId: id),
    );

    res.fold(
      (failure) => emit(BlocStateReadFailure(failure.message)),
      (success) => emit(BlocStateReadSuccess(
        items: success,
        filteredItems: success,
      )),
    );
  }

  @override
  void onSelect(
    BlocEventReadSelect<ExamModel> event,
    Emitter<BlocStateRead<ExamModel>> emit,
  ) {
    state.maybeWhen(
      success: (exams, filteredExams, _) {
        emit(BlocStateReadSuccess(
          items: exams,
          filteredItems: filteredExams,
          selectedItem: event.item,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<ExamModel>> emit,
  ) {
    state.maybeWhen(
      success: (exams, _, __) {
        final finds = exams
            .where(
              (exam) => exam.title.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocStateReadSuccess(
          items: exams,
          filteredItems: finds,
        ));
      },
      orElse: () => null,
    );
  }
}

@lazySingleton
class ExamBlocWrite extends BlocWrite<ExamModel> {
  final CreateExamUsecase _createExamUsecase;
  final UpdateExamUsecase _updateExamUsecase;
  final DeleteExamUsecase _deleteExamUsecase;

  ExamBlocWrite(
    this._createExamUsecase,
    this._updateExamUsecase,
    this._deleteExamUsecase,
  ) : super(const BlocStateWriteInitial()) {
    on<BlocEventWriteCreate>(onCreate);
    on<BlocEventWriteUpdate>(onUpdate);
    on<BlocEventWriteDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocEventWriteCreate event,
    Emitter<BlocStateWrite<ExamModel>> emit,
  ) async {
    final res = await _createExamUsecase.call(event.params as CreateExamParams);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocEventWriteUpdate event,
    Emitter<BlocStateWrite<ExamModel>> emit,
  ) async {
    final res = await _updateExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocEventWriteDelete event,
    Emitter<BlocStateWrite<ExamModel>> emit,
  ) async {
    final res = await _deleteExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }
}
