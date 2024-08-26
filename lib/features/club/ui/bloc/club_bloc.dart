import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClubBlocRead extends BlocRead<ClubModel> {
  final GetAllClubUsecase _getAllClubUsecase;

  ClubBlocRead(this._getAllClubUsecase) : super(const BlocStateReadInitial()) {
    on<BlocEventReadClear<ClubModel>>(onClear);
    on<BlocEventReadGet<ClubModel>>(onGet);
    on<BlocEventReadSelect<ClubModel>>(onSelect);
    on<BlocEventReadFilter<ClubModel>>(onFilter);
    on<BlocEventReadAppend<ClubModel>>(onAppend);
    on<BlocEventReadRemove<ClubModel>>(onRemove);
  }

  @override
  void onGet(
    BlocEventReadGet event,
    Emitter<BlocStateRead<ClubModel>> emit,
  ) async {
    emit(const BlocStateReadLoading());

    final res = await _getAllClubUsecase.call();

    res.fold(
      (failure) => emit(BlocStateReadFailure(failure.message)),
      (success) {
        success.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
        emit(BlocStateReadSuccess(
          items: success,
          filteredItems: success,
        ));
      },
    );
  }

  @override
  void onSelect(
    BlocEventReadSelect<ClubModel> event,
    Emitter<BlocStateRead<ClubModel>> emit,
  ) {
    state.maybeWhen(
      success: (clubs, filteredClubs, _) {
        emit(BlocStateReadSuccess(
          items: clubs,
          filteredItems: filteredClubs,
          selectedItem: event.item,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<ClubModel>> emit,
  ) {
    state.maybeWhen(
      success: (clubs, _, __) {
        final finds = clubs
            .where(
              (club) => club.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocStateReadSuccess(
          items: clubs,
          filteredItems: finds,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onAppend(
    BlocEventReadAppend<ClubModel> event,
    Emitter<BlocStateRead<ClubModel>> emit,
  ) {
    state.maybeWhen(
      success: (clubs, _, __) {
        final items = [...clubs, event.item];
        items.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
          selectedItem: null,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onRemove(
    BlocEventReadRemove<ClubModel> event,
    Emitter<BlocStateRead<ClubModel>> emit,
  ) {
    state.maybeWhen(
      success: (clubs, _, __) {
        final items = clubs.where((club) => club.id != event.id).toList();
        items.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
          selectedItem: null,
        ));
      },
      orElse: () => null,
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
  ) : super(const BlocStateWriteInitial()) {
    on<BlocEventWriteCreate>(onCreate);
    on<BlocEventWriteUpdate>(onUpdate);
    on<BlocEventWriteDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocEventWriteCreate event,
    Emitter<BlocStateWrite<ClubModel>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _createClubUsecase.call(event.params as CreateClubParams);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocEventWriteUpdate event,
    Emitter<BlocStateWrite<ClubModel>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _updateClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocEventWriteDelete event,
    Emitter<BlocStateWrite<ClubModel>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _deleteClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }
}
