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
    on<BlocEventReadAppend<TacticalModel>>(onAppend);
    on<BlocEventReadRemove<TacticalModel>>(onRemove);
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
      (success) {
        success.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

        emit(BlocStateReadSuccess(
          items: success,
          filteredItems: success,
          selectedItem: null,
        ));
      },
    );
  }

  @override
  void onSelect(
    BlocEventReadSelect<TacticalModel> event,
    Emitter<BlocStateRead<TacticalModel>> emit,
  ) {
    state.whenOrNull(
      success: (tacticals, filteredTacticals, _) {
        emit(BlocStateReadSuccess(
          items: tacticals,
          filteredItems: filteredTacticals,
          selectedItem: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<TacticalModel>> emit,
  ) {
    state.whenOrNull(
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
          selectedItem: null,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocEventReadAppend<TacticalModel> event,
    Emitter<BlocStateRead<TacticalModel>> emit,
  ) {
    state.whenOrNull(
      success: (tacticals, _, __) {
        final find = tacticals
            .where((tactical) => tactical.id == event.item.id)
            .toList();
        if (find.isNotEmpty) {
          final items = tacticals.map((tactical) {
            if (tactical.id == event.item.id) {
              return event.item;
            }
            return tactical;
          }).toList();

          items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

          emit(BlocStateReadSuccess(
            items: items,
            filteredItems: items,
          ));
          return;
        }

        final items = [...tacticals, event.item];

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
    BlocEventReadRemove<TacticalModel> event,
    Emitter<BlocStateRead<TacticalModel>> emit,
  ) {
    state.whenOrNull(
      success: (tacticals, _, __) {
        final items =
            tacticals.where((tactical) => tactical.id != event.id).toList();
        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
        ));
      },
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
    emit(const BlocStateWriteLoading());
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
    emit(const BlocStateWriteLoading());

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
    emit(const BlocStateWriteLoading());
    final res = await _deleteTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }
}
