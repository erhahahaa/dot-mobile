import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class EvaluationBlocRead extends BlocRead<EvaluationModel> {
  final GetAllEvaluationUsecase _getAllEvaluationUsecase;

  EvaluationBlocRead(this._getAllEvaluationUsecase)
      : super(const BlocReadStateInitial()) { 
    on<BlocReadEventGet<EvaluationModel>>(onGet);
    on<BlocReadEventSelect<EvaluationModel>>(onSelect);
    on<BlocReadEventFilter<EvaluationModel>>(onFilter);
    on<BlocReadEventAppend<EvaluationModel>>(onAppend);
    on<BlocReadEventRemove<EvaluationModel>>(onRemove);
  }

  @override
  void onGet(
    BlocReadEventGet event,
    Emitter<BlocReadState<EvaluationModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocReadState.failure('Id required'));
    }
    emit(const BlocReadStateLoading());

    final res = await _getAllEvaluationUsecase.call(
      GetAllEvaluationParams(clubId: id),
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
    BlocReadEventSelect<EvaluationModel> event,
    Emitter<BlocReadState<EvaluationModel>> emit,
  ) {
    state.whenOrNull(
      success: (evaluations, filteredEvaluations, _) {
        emit(BlocReadStateSuccess(
          items: evaluations,
          filteredItems: filteredEvaluations,
          selected: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocReadEventFilter event,
    Emitter<BlocReadState<EvaluationModel>> emit,
  ) {
    state.whenOrNull(
      success: (evaluations, _, selected) {
        final finds = evaluations
            .where(
              (evaluation) =>
                  evaluation.athlete?.name.toLowerCase().contains(
                        event.query.toLowerCase(),
                      ) ??
                  evaluation.coach?.name.toLowerCase().contains(
                        event.query.toLowerCase(),
                      ) ??
                  evaluation.exam?.title.toLowerCase().contains(
                        event.query.toLowerCase(),
                      ) ??
                  false,
            )
            .toList();

        emit(BlocReadStateSuccess(
          items: evaluations,
          filteredItems: finds,
          selected: selected,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocReadEventAppend<EvaluationModel> event,
    Emitter<BlocReadState<EvaluationModel>> emit,
  ) {
    state.whenOrNull(
      success: (evaluations, _, selected) {
        final find = evaluations.where((e) => e.id == event.item.id).toList();

        if (find.isNotEmpty) {
          final items = evaluations.map((e) {
            if (e.id == event.item.id) {
              return event.item;
            }
            return e;
          }).toList();
          items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

          emit(BlocReadStateSuccess(
            items: items,
            filteredItems: items,
            selected: selected,
          ));
          return;
        }

        final items = [...evaluations, event.item];

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
    BlocReadEventRemove<EvaluationModel> event,
    Emitter<BlocReadState<EvaluationModel>> emit,
  ) {
    state.whenOrNull(
      success: (evaluations, _, selected) {
        final items = evaluations.where((e) => e.id != event.id).toList();
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
class EvaluationBlocWrite extends BlocWrite<EvaluationModel> {
  final CreateEvaluationUsecase _createEvaluationUsecase;
  final UpdateEvaluationUsecase _updateEvaluationUsecase;
  final DeleteEvaluationUsecase _deleteEvaluationUsecase;

  EvaluationBlocWrite(
    this._createEvaluationUsecase,
    this._updateEvaluationUsecase,
    this._deleteEvaluationUsecase,
  ) : super(const BlocWriteStateInitial()) {
    on<BlocWriteEventCreate>(onCreate);
    on<BlocWriteEventUpdate>(onUpdate);
    on<BlocWriteEventDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocWriteEventCreate event,
    Emitter<BlocWriteState<EvaluationModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _createEvaluationUsecase.call(
      event.params as CreateEvaluationParams,
    );

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocWriteEventUpdate event,
    Emitter<BlocWriteState<EvaluationModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _updateEvaluationUsecase.call(
      event.params as UpdateEvaluationParams,
    );

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocWriteEventDelete event,
    Emitter<BlocWriteState<EvaluationModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _deleteEvaluationUsecase.call(
      event.params as DeleteEvaluationParams,
    );

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }
}
