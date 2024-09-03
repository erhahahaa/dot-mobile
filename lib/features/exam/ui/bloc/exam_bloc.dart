import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExamBlocRead extends BlocRead<ExamModel> {
  final GetAllExamUsecase _getAllExamUsecase;

  ExamBlocRead(this._getAllExamUsecase) : super(const BlocReadStateInitial()) {
    on<BlocReadEventGet<ExamModel>>(onGet);
    on<BlocReadEventSelect<ExamModel>>(onSelect);
    on<BlocReadEventFilter<ExamModel>>(onFilter);
    on<BlocReadEventAppend<ExamModel>>(onAppend);
    on<BlocReadEventRemove<ExamModel>>(onRemove);
  }

  @override
  void onGet(
    BlocReadEventGet event,
    Emitter<BlocReadState<ExamModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocReadState.failure('Id required'));
    }
    emit(const BlocReadStateLoading());

    final res = await _getAllExamUsecase.call(
      GetAllExamParams(clubId: id),
    );

    res.fold(
      (failure) => emit(BlocReadStateFailure(failure.message)),
      (success) {
        success.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

        emit(BlocReadStateSuccess(
          items: success,
          filteredItems: success,
        ));
      },
    );
  }

  @override
  void onSelect(
    BlocReadEventSelect<ExamModel> event,
    Emitter<BlocReadState<ExamModel>> emit,
  ) {
    state.whenOrNull(
      success: (exams, filteredExams, _) {
        emit(BlocReadStateSuccess(
          items: exams,
          filteredItems: filteredExams,
          selected: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocReadEventFilter event,
    Emitter<BlocReadState<ExamModel>> emit,
  ) {
    state.whenOrNull(
      success: (exams, _, selected) {
        final finds = exams
            .where(
              (exam) => exam.title.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocReadStateSuccess(
          items: exams,
          filteredItems: finds,
          selected: selected,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocReadEventAppend<ExamModel> event,
    Emitter<BlocReadState<ExamModel>> emit,
  ) {
    state.whenOrNull(
      success: (exams, _, selected) {
        final find = exams.where((exam) => exam.id == event.item.id).toList();

        if (find.isNotEmpty) {
          final items = exams.map((exam) {
            if (exam.id == event.item.id) {
              return event.item;
            }
            return exam;
          }).toList();

          items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

          emit(BlocReadStateSuccess(
            items: items,
            filteredItems: items,
            selected: selected,
          ));
          return;
        }

        final items = [...exams, event.item];

        items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

        emit(BlocReadStateSuccess(
          items: items,
          filteredItems: items,
          selected: selected,
        ));
      },
      failure: (_) => emit(BlocReadStateSuccess(
        items: [event.item],
        filteredItems: [event.item],
      )),
    );
  }

  @override
  void onRemove(
    BlocReadEventRemove<ExamModel> event,
    Emitter<BlocReadState<ExamModel>> emit,
  ) {
    state.whenOrNull(
      success: (exams, _, selected) {
        final items = exams.where((exam) => exam.id != event.id).toList();

        emit(BlocReadStateSuccess(
          items: items,
          filteredItems: items,
          selected: selected,
        ));
      },
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
  ) : super(const BlocWriteStateInitial()) {
    on<BlocWriteEventCreate>(onCreate);
    on<BlocWriteEventUpdate>(onUpdate);
    on<BlocWriteEventDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocWriteEventCreate event,
    Emitter<BlocWriteState<ExamModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _createExamUsecase.call(event.params as CreateExamParams);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocWriteEventUpdate event,
    Emitter<BlocWriteState<ExamModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _updateExamUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocWriteEventDelete event,
    Emitter<BlocWriteState<ExamModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _deleteExamUsecase.call(event.params as DeleteExamParams);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }
}
