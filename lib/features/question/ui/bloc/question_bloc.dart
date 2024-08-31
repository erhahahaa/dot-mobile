import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class QuestionBlocRead extends BlocRead<QuestionModel> {
  final GetAllQuestionUsecase _getAllQuestionUsecase;

  QuestionBlocRead(this._getAllQuestionUsecase)
      : super(const BlocStateReadInitial()) {
    on<BlocEventReadClear<QuestionModel>>(onClear);
    on<BlocEventReadGet<QuestionModel>>(onGet);
    on<BlocEventReadSelect<QuestionModel>>(onSelect);
    on<BlocEventReadFilter<QuestionModel>>(onFilter);
    on<BlocEventReadAppend<QuestionModel>>(onAppend);
    on<BlocEventReadRemove<QuestionModel>>(onRemove);
  }

  @override
  void onGet(
    BlocEventReadGet event,
    Emitter<BlocStateRead<QuestionModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocStateRead.failure('Id required'));
    }
    emit(const BlocStateReadLoading());

    final res = await _getAllQuestionUsecase.call(
      GetAllQuestionParams(examId: id),
    );

    res.fold(
      (failure) => emit(BlocStateReadFailure(failure.message)),
      (success) {
        success.sort((a, b) => a.order.compareTo(b.order));
        emit(BlocStateReadSuccess(
          items: success,
          filteredItems: success,
        ));
      },
    );
  }

  @override
  void onSelect(
    BlocEventReadSelect<QuestionModel> event,
    Emitter<BlocStateRead<QuestionModel>> emit,
  ) {
    state.whenOrNull(
      success: (questions, filteredQuestions, _) {
        emit(BlocStateReadSuccess(
          items: questions,
          filteredItems: filteredQuestions,
          selectedItem: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<QuestionModel>> emit,
  ) {
    state.whenOrNull(
      success: (questions, _, __) {
        final finds = questions
            .where(
              (question) => question.question.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocStateReadSuccess(
          items: questions,
          filteredItems: finds,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocEventReadAppend<QuestionModel> event,
    Emitter<BlocStateRead<QuestionModel>> emit,
  ) {
    state.whenOrNull(
      success: (questions, _, __) {
        final items = [...questions, event.item];
        items.sort((a, b) => a.order.compareTo(b.order));
        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
        ));
      },
      failure: (_) => emit(BlocStateReadSuccess(
        items: [event.item],
        filteredItems: [event.item],
      )),
    );
  }

  @override
  void onRemove(
    BlocEventReadRemove<QuestionModel> event,
    Emitter<BlocStateRead<QuestionModel>> emit,
  ) {
    state.whenOrNull(
      success: (questions, _, __) {
        final items = questions
            .where(
              (question) => question.id != event.id,
            )
            .toList();
        items.sort((a, b) => a.order.compareTo(b.order));
        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
        ));
      },
    );
  }
}

@lazySingleton
class QuestionBlocWrite extends BlocWrite<List<QuestionModel>> {
  final CreateQuestionBatchUsecase _createQuestionBatchUsecase;
  final UpdateQuestionBatchUsecase _updateQuestionBatchUsecase;
  final DeleteQuestionUsecase _deleteQuestionUsecase;

  QuestionBlocWrite(
    this._createQuestionBatchUsecase,
    this._updateQuestionBatchUsecase,
    this._deleteQuestionUsecase,
  ) : super(const BlocStateWriteInitial()) {
    on<BlocEventWriteCreate>(onCreate);
    on<BlocEventWriteUpdate>(onUpdate);
    on<BlocEventWriteDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocEventWriteCreate event,
    Emitter<BlocStateWrite<List<QuestionModel>>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _createQuestionBatchUsecase.call(
      event.params as List<CreateQuestionParams>,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocEventWriteUpdate event,
    Emitter<BlocStateWrite<List<QuestionModel>>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _updateQuestionBatchUsecase.call(
      event.params as List<UpdateQuestionParams>,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocEventWriteDelete event,
    Emitter<BlocStateWrite<List<QuestionModel>>> emit,
  ) async {
    // emit(const BlocStateWriteLoading());
    final res = await _deleteQuestionUsecase.call(
      event.params as DeleteQuestionParams,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) {
        // final items = state.whenOrNull(
        //   success: (items) => items,
        //
        // );
        // if (items == null) return;
        // final filteredItems = items
        //     .where(
        //       (question) => question.id != success.id,
        //     )
        //     .toList();

        // emit(BlocStateWriteSuccess(filteredItems));
      },
    );
  }
}
