import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TacticalBlocRead extends BlocRead<TacticalModel> {
  final GetAllTacticalUsecase _getAllTacticalUsecase;

  TacticalBlocRead(this._getAllTacticalUsecase)
      : super(const BlocReadStateInitial()) {
    on<BlocReadEventGet<TacticalModel>>(onGet);
    on<BlocReadEventSelect<TacticalModel>>(onSelect);
    on<BlocReadEventFilter<TacticalModel>>(onFilter);
    on<BlocReadEventAppend<TacticalModel>>(onAppend);
    on<BlocReadEventRemove<TacticalModel>>(onRemove);
  }

  @override
  void onGet(
    BlocReadEventGet event,
    Emitter<BlocReadState<TacticalModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocReadState.failure('Id required'));
    }
    emit(const BlocReadStateLoading());

    final res = await _getAllTacticalUsecase.call(
      GetAllTacticalParams(clubId: id),
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
    BlocReadEventSelect<TacticalModel> event,
    Emitter<BlocReadState<TacticalModel>> emit,
  ) {
    state.whenOrNull(
      success: (tacticals, filteredTacticals, _) {
        emit(BlocReadStateSuccess(
          items: tacticals,
          filteredItems: filteredTacticals,
          selected: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocReadEventFilter event,
    Emitter<BlocReadState<TacticalModel>> emit,
  ) {
    state.whenOrNull(
      success: (tacticals, _, selected) {
        final finds = tacticals
            .where(
              (tactical) => tactical.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocReadStateSuccess(
          items: tacticals,
          filteredItems: finds,
          selected: selected,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocReadEventAppend<TacticalModel> event,
    Emitter<BlocReadState<TacticalModel>> emit,
  ) {
    state.whenOrNull(
      success: (tacticals, _, selected) {
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

          emit(BlocReadStateSuccess(
            items: items,
            filteredItems: items,
            selected: selected,
          ));
          return;
        }

        final items = [...tacticals, event.item];

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
    BlocReadEventRemove<TacticalModel> event,
    Emitter<BlocReadState<TacticalModel>> emit,
  ) {
    state.whenOrNull(
      success: (tacticals, _, selected) {
        final items =
            tacticals.where((tactical) => tactical.id != event.id).toList();
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
class TacticalBlocWrite extends BlocWrite<TacticalModel> {
  final CreateTacticalUsecase _createTacticalUsecase;
  final UpdateTacticalUsecase _updateTacticalUsecase;
  final DeleteTacticalUsecase _deleteTacticalUsecase;

  TacticalBlocWrite(
    this._createTacticalUsecase,
    this._updateTacticalUsecase,
    this._deleteTacticalUsecase,
  ) : super(const BlocWriteStateInitial()) {
    on<BlocWriteEventCreate>(onCreate);
    on<BlocWriteEventUpdate>(onUpdate);
    on<BlocWriteEventDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocWriteEventCreate event,
    Emitter<BlocWriteState<TacticalModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res =
        await _createTacticalUsecase.call(event.params as CreateTacticalParams);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocWriteEventUpdate event,
    Emitter<BlocWriteState<TacticalModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());

    final res = await _updateTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocWriteEventDelete event,
    Emitter<BlocWriteState<TacticalModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _deleteTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }
}
