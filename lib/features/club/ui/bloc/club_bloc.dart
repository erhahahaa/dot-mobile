import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'club_bloc.freezed.dart';
part 'club_event.dart';
part 'club_state.dart';

@lazySingleton
class ClubBloc extends Bloc<ClubEvent, ClubState> {
  final GetAllClubUsecase _getAllClubUsecase;
  final CreateClubUsecase _createClubUsecase;
  final UpdateClubUsecase _updateClubUsecase;
  final DeleteClubUsecase _deleteClubUsecase;

  ClubBloc(
    this._getAllClubUsecase,
    this._createClubUsecase,
    this._updateClubUsecase,
    this._deleteClubUsecase,
  ) : super(const ClubStateInitial()) {
    on<ClubEventClear>(_onClear);
    on<ClubEventGetClubs>(_onGetClubs);
    on<ClubEventFilterClubs>(_onFilterClubs);
    on<ClubEventSelectClub>(_onSelectClub);
    on<ClubEventCreate>(_onCreate);
    on<ClubEventUpdate>(_onUpdate);
    on<ClubEventDelete>(_onDelete);
  }
  void _onClear(
    ClubEventClear event,
    Emitter<ClubState> emit,
  ) =>
      emit(const ClubStateInitial());

  void _onGetClubs(
    ClubEventGetClubs event,
    Emitter<ClubState> emit,
  ) async {
    emit(const ClubStateLoading());
    final res = await _getAllClubUsecase.call();

    res.fold(
      (failure) => emit(ClubStateFailure(failure.message)),
      (success) => emit(
        ClubStateSuccess(
          clubs: success,
          filteredClubs: success,
        ),
      ),
    );
  }

  void _onFilterClubs(
    ClubEventFilterClubs event,
    Emitter<ClubState> emit,
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

        emit(
          ClubStateSuccess(
            clubs: clubs,
            filteredClubs: finds,
          ),
        );
      },
      orElse: () => null,
    );
  }

  void _onSelectClub(
    ClubEventSelectClub event,
    Emitter<ClubState> emit,
  ) {
    state.maybeWhen(
      success: (clubs, filteredClubs, _) {
        emit(
          ClubStateSuccess(
            clubs: clubs,
            filteredClubs: filteredClubs,
            selectedClub: event.club,
          ),
        );
      },
      orElse: () => null,
    );
  }

  void _onCreate(
    ClubEventCreate event,
    Emitter<ClubState> emit,
  ) async {
    final res = await _createClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(ClubStateFailure(failure.message)),
      (success) => emit(ClubStateCreated(success)),
    );
  }

  void _onUpdate(
    ClubEventUpdate event,
    Emitter<ClubState> emit,
  ) async {
    final res = await _updateClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(ClubStateFailure(failure.message)),
      (success) => emit(ClubStateUpdated(success)),
    );
  }

  void _onDelete(
    ClubEventDelete event,
    Emitter<ClubState> emit,
  ) async {
    final res = await _deleteClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(ClubStateFailure(failure.message)),
      (success) => emit(ClubStateDeleted(success)),
    );
  }
}
