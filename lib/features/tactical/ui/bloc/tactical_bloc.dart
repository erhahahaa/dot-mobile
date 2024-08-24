import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TacticalBlocRead extends BlocRead<TacticalModel> {
  final GetAllTacticalUsecase _getAllTacticalUsecase;

  TacticalBlocRead(this._getAllTacticalUsecase)
      : super(const BlocStateReadInitial()) {
    on<BlocEventReadClear<TacticalModel>>(onClear);
    on<BlocEventReadGet<TacticalModel>>(onGet);
    on<BlocEventReadSelect<TacticalModel>>(onSelect);
    on<BlocEventReadFilter<TacticalModel>>(onFilter);
  }

  @override
  void onGet(
    BlocEventReadGet event,
    Emitter<BlocStateRead<TacticalModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocStateRead.failure('Id required'));
    }
    emit(const BlocStateReadLoading());

    final res = await _getAllTacticalUsecase.call(
      GetAllTacticalParams(clubId: id),
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
    BlocEventReadSelect<TacticalModel> event,
    Emitter<BlocStateRead<TacticalModel>> emit,
  ) {
    state.maybeWhen(
      success: (tacticals, filteredTacticals, _) {
        emit(BlocStateReadSuccess(
          items: tacticals,
          filteredItems: filteredTacticals,
          selectedItem: event.item,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<TacticalModel>> emit,
  ) {
    state.maybeWhen(
      success: (tacticals, _, __) {
        final finds = tacticals
            .where(
              (tactical) => tactical.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocStateReadSuccess(
          items: tacticals,
          filteredItems: finds,
        ));
      },
      orElse: () => null,
    );
  }
}

@lazySingleton
class TacticalBlocWrite extends BlocWrite<TacticalModel> {
  final CreateTacticalUsecase _createTacticalUsecase;
  final UpdateTacticalUsecase _updateTacticalUsecase;
  final DeleteTacticalUsecase _deleteTacticalUsecase;

  TacticalBlocWrite(
    this._createTacticalUsecase,
    this._updateTacticalUsecase,
    this._deleteTacticalUsecase,
  ) : super(const BlocStateWriteInitial()) {
    on<BlocEventWriteCreate>(onCreate);
    on<BlocEventWriteUpdate>(onUpdate);
    on<BlocEventWriteDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocEventWriteCreate event,
    Emitter<BlocStateWrite<TacticalModel>> emit,
  ) async {
    final res =
        await _createTacticalUsecase.call(event.params as CreateTacticalParams);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocEventWriteUpdate event,
    Emitter<BlocStateWrite<TacticalModel>> emit,
  ) async {
    final res = await _updateTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocEventWriteDelete event,
    Emitter<BlocStateWrite<TacticalModel>> emit,
  ) async {
    final res = await _deleteTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }
}
