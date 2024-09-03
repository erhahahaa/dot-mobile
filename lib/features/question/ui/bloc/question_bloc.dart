import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class QuestionBlocRead extends BlocRead<QuestionModel> {
  final GetAllQuestionUsecase _getAllQuestionUsecase;

  QuestionBlocRead(this._getAllQuestionUsecase)
      : super(const BlocReadStateInitial()) {
    on<BlocReadEventGet<QuestionModel>>(onGet);
    on<BlocReadEventSelect<QuestionModel>>(onSelect);
    on<BlocReadEventFilter<QuestionModel>>(onFilter);
    on<BlocReadEventAppend<QuestionModel>>(onAppend);
    on<BlocReadEventRemove<QuestionModel>>(onRemove);
  }

  @override
  void onGet(
    BlocReadEventGet event,
    Emitter<BlocReadState<QuestionModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocReadState.failure('Id required'));
    }
    emit(const BlocReadStateLoading());

    final res = await _getAllQuestionUsecase.call(
      GetAllQuestionParams(examId: id),
    );

    res.fold(
      (failure) => emit(BlocReadStateFailure(failure.message)),
      (success) {
        success.sort((a, b) => a.order.compareTo(b.order));
        emit(BlocReadStateSuccess(
          items: success,
          filteredItems: success,
        ));
      },
    );
  }

  @override
  void onSelect(
    BlocReadEventSelect<QuestionModel> event,
    Emitter<BlocReadState<QuestionModel>> emit,
  ) {
    state.whenOrNull(
      success: (questions, filteredQuestions, _) {
        emit(BlocReadStateSuccess(
          items: questions,
          filteredItems: filteredQuestions,
          selected: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocReadEventFilter event,
    Emitter<BlocReadState<QuestionModel>> emit,
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

        emit(BlocReadStateSuccess(
          items: questions,
          filteredItems: finds,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocReadEventAppend<QuestionModel> event,
    Emitter<BlocReadState<QuestionModel>> emit,
  ) {
    state.whenOrNull(
      success: (questions, _, __) {
        final items = [...questions, event.item];
        items.sort((a, b) => a.order.compareTo(b.order));
        emit(BlocReadStateSuccess(
          items: items,
          filteredItems: items,
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
    BlocReadEventRemove<QuestionModel> event,
    Emitter<BlocReadState<QuestionModel>> emit,
  ) {
    state.whenOrNull(
      success: (questions, _, __) {
        final items = questions
            .where(
              (question) => question.id != event.id,
            )
            .toList();
        items.sort((a, b) => a.order.compareTo(b.order));
        emit(BlocReadStateSuccess(
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
  ) : super(const BlocWriteStateInitial()) {
    on<BlocWriteEventCreate>(onCreate);
    on<BlocWriteEventUpdate>(onUpdate);
    on<BlocWriteEventDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocWriteEventCreate event,
    Emitter<BlocWriteState<List<QuestionModel>>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _createQuestionBatchUsecase.call(
      event.params as List<CreateQuestionParams>,
    );

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocWriteEventUpdate event,
    Emitter<BlocWriteState<List<QuestionModel>>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _updateQuestionBatchUsecase.call(
      event.params as List<UpdateQuestionParams>,
    );

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocWriteEventDelete event,
    Emitter<BlocWriteState<List<QuestionModel>>> emit,
  ) async {
    // emit(const BlocWriteStateLoading());
    final res = await _deleteQuestionUsecase.call(
      event.params as DeleteQuestionParams,
    );

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
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

        // emit(BlocWriteStateSuccess(filteredItems));
      },
    );
  }
}
