import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClubBlocRead extends BlocRead<ClubModel> {
  final GetAllClubUsecase _getAllClubUsecase;
  ClubModel? selected;

  ClubBlocRead(this._getAllClubUsecase) : super(const BlocReadStateInitial()) {
    on<BlocReadEventGet<ClubModel>>(onGet);
    on<BlocReadEventSelect<ClubModel>>(onSelect);
    on<BlocReadEventFilter<ClubModel>>(onFilter);
    on<BlocReadEventAppend<ClubModel>>(onAppend);
    on<BlocReadEventRemove<ClubModel>>(onRemove);
  }

  @override
  void onGet(
    BlocReadEventGet event,
    Emitter<BlocReadState<ClubModel>> emit,
  ) async {
    emit(const BlocReadStateLoading());

    final res = await _getAllClubUsecase.call();

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
    BlocReadEventSelect<ClubModel> event,
    Emitter<BlocReadState<ClubModel>> emit,
  ) {
    selected = event.item;
    state.whenOrNull(
      success: (clubs, filteredClubs, _) {
        emit(BlocReadStateSuccess(
          items: clubs,
          filteredItems: filteredClubs,
          selected: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocReadEventFilter event,
    Emitter<BlocReadState<ClubModel>> emit,
  ) {
    state.whenOrNull(
      success: (clubs, _, selected) {
        final finds = clubs
            .where(
              (club) => club.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocReadStateSuccess(
          items: clubs,
          filteredItems: finds,
          selected: selected,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocReadEventAppend<ClubModel> event,
    Emitter<BlocReadState<ClubModel>> emit,
  ) {
    state.whenOrNull(
      success: (clubs, _, selected) {
        final find = clubs.where((club) => club.id == event.item.id).toList();
        if (find.isNotEmpty) {
          final items = clubs.map((club) {
            if (club.id == event.item.id) {
              return event.item;
            }
            return club;
          }).toList();

          items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));
          emit(BlocReadStateSuccess(
            items: items,
            filteredItems: items,
            selected: selected,
          ));
          return;
        }
        final items = [...clubs, event.item];
        items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));
        emit(BlocReadStateSuccess(
          items: items,
          filteredItems: items,
          selected: selected,
        ));
      },
      failure: (_) => emit(
        BlocReadState.success(
          items: [event.item],
          filteredItems: [event.item],
        ),
      ),
    );
  }

  @override
  void onRemove(
    BlocReadEventRemove<ClubModel> event,
    Emitter<BlocReadState<ClubModel>> emit,
  ) {
    state.whenOrNull(
      success: (clubs, _, selected) {
        final items = clubs.where((club) => club.id != event.id).toList();
        items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));
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
class ClubBlocWrite extends BlocWrite<ClubModel> {
  final CreateClubUsecase _createClubUsecase;
  final UpdateClubUsecase _updateClubUsecase;
  final DeleteClubUsecase _deleteClubUsecase;

  ClubBlocWrite(
    this._createClubUsecase,
    this._updateClubUsecase,
    this._deleteClubUsecase,
  ) : super(const BlocWriteStateInitial()) {
    on<BlocWriteEventCreate>(onCreate);
    on<BlocWriteEventUpdate>(onUpdate);
    on<BlocWriteEventDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocWriteEventCreate event,
    Emitter<BlocWriteState<ClubModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _createClubUsecase.call(event.params as CreateClubParams);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocWriteEventUpdate event,
    Emitter<BlocWriteState<ClubModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _updateClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocWriteEventDelete event,
    Emitter<BlocWriteState<ClubModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _deleteClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }
}
