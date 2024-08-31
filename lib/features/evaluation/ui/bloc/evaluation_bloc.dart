import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class EvaluationBlocRead extends BlocRead<EvaluationModel> {
  final GetAllEvaluationUsecase _getAllEvaluationUsecase;

  EvaluationBlocRead(this._getAllEvaluationUsecase)
      : super(const BlocStateReadInitial()) {
    on<BlocEventReadClear<EvaluationModel>>(onClear);
    on<BlocEventReadGet<EvaluationModel>>(onGet);
    on<BlocEventReadSelect<EvaluationModel>>(onSelect);
    on<BlocEventReadFilter<EvaluationModel>>(onFilter);
    on<BlocEventReadAppend<EvaluationModel>>(onAppend);
    on<BlocEventReadRemove<EvaluationModel>>(onRemove);
  }

  @override
  void onGet(
    BlocEventReadGet event,
    Emitter<BlocStateRead<EvaluationModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocStateRead.failure('Id required'));
    }
    emit(const BlocStateReadLoading());

    final res = await _getAllEvaluationUsecase.call(
      GetAllEvaluationParams(clubId: id),
    );

    res.fold(
      (failure) => emit(BlocStateReadFailure(failure.message)),
      (success) {
        success.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

        emit(BlocStateReadSuccess(
          items: success,
          filteredItems: success,
        ));
      },
    );
  }

  @override
  void onSelect(
    BlocEventReadSelect<EvaluationModel> event,
    Emitter<BlocStateRead<EvaluationModel>> emit,
  ) {
    state.whenOrNull(
      success: (evaluations, filteredEvaluations, _) {
        emit(BlocStateReadSuccess(
          items: evaluations,
          filteredItems: filteredEvaluations,
          selectedItem: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<EvaluationModel>> emit,
  ) {
    state.whenOrNull(
      success: (evaluations, _, __) {
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

        emit(BlocStateReadSuccess(
          items: evaluations,
          filteredItems: finds,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocEventReadAppend<EvaluationModel> event,
    Emitter<BlocStateRead<EvaluationModel>> emit,
  ) {
    state.whenOrNull(
      success: (evaluations, _, __) {
        final find = evaluations.where((e) => e.id == event.item.id).toList();

        if (find.isNotEmpty) {
          final items = evaluations.map((e) {
            if (e.id == event.item.id) {
              return event.item;
            }
            return e;
          }).toList();
          items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

          emit(BlocStateReadSuccess(
            items: items,
            filteredItems: items,
          ));
          return;
        }

        final items = [...evaluations, event.item];

        items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

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
    BlocEventReadRemove<EvaluationModel> event,
    Emitter<BlocStateRead<EvaluationModel>> emit,
  ) {
    state.whenOrNull(
      success: (evaluations, _, __) {
        final items = evaluations.where((e) => e.id != event.id).toList();
        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
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
  ) : super(const BlocStateWriteInitial()) {
    on<BlocEventWriteCreate>(onCreate);
    on<BlocEventWriteUpdate>(onUpdate);
    on<BlocEventWriteDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocEventWriteCreate event,
    Emitter<BlocStateWrite<EvaluationModel>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _createEvaluationUsecase.call(
      event.params as CreateEvaluationParams,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocEventWriteUpdate event,
    Emitter<BlocStateWrite<EvaluationModel>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _updateEvaluationUsecase.call(
      event.params as UpdateEvaluationParams,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocEventWriteDelete event,
    Emitter<BlocStateWrite<EvaluationModel>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _deleteEvaluationUsecase.call(
      event.params as DeleteEvaluationParams,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }
}
