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
      (success) => emit(BlocStateReadSuccess(
        items: success,
        filteredItems: success,
      )),
    );
  }

  @override
  void onSelect(
    BlocEventReadSelect<EvaluationModel> event,
    Emitter<BlocStateRead<EvaluationModel>> emit,
  ) {
    state.maybeWhen(
      success: (evaluations, filteredEvaluations, _) {
        emit(BlocStateReadSuccess(
          items: evaluations,
          filteredItems: filteredEvaluations,
          selectedItem: event.item,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<EvaluationModel>> emit,
  ) {
    state.maybeWhen(
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
      orElse: () => null,
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
    final res = await _deleteEvaluationUsecase.call(
      event.params as DeleteEvaluationParams,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }
}
