import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coach_club_bloc.freezed.dart';
part 'coach_club_event.dart';
part 'coach_club_state.dart';

@lazySingleton
class CoachClubBloc extends Bloc<CoachClubEvent, CoachClubState> {
  final GetAllClubUsecase _getAllClubUsecase;
  final CreateClubUsecase _createClubUsecase;
  final UpdateClubUsecase _updateClubUsecase;
  final DeleteClubUsecase _deleteClubUsecase;

  CoachClubBloc(
    this._getAllClubUsecase,
    this._createClubUsecase,
    this._updateClubUsecase,
    this._deleteClubUsecase,
  ) : super(const CoachClubStateInitial()) {
    on<CoachClubEventClear>(_onClear);
    on<CoachClubEventGetClubs>(_onGetClubs);
    on<CoachClubEventFilterClubs>(_onFilterClubs);
    on<CoachClubEventCreate>(_onCreate);
    on<CoachClubEventUpdate>(_onUpdate);
    on<CoachClubEventDelete>(_onDelete);
  }
  void _onClear(
    CoachClubEventClear event,
    Emitter<CoachClubState> emit,
  ) =>
      emit(const CoachClubStateInitial());

  void _onGetClubs(
    CoachClubEventGetClubs event,
    Emitter<CoachClubState> emit,
  ) async {
    emit(const CoachClubStateLoading());
    final res = await _getAllClubUsecase.call();

    res.fold(
      (failure) => emit(CoachClubStateFailure(failure.message)),
      (success) => emit(
        CoachClubStateLoaded(
          clubs: success,
          filteredClubs: success,
        ),
      ),
    );
  }

  void _onFilterClubs(
    CoachClubEventFilterClubs event,
    Emitter<CoachClubState> emit,
  ) {
    emit(const CoachClubStateLoading());
    state.maybeWhen(
      loaded: (clubs, _) {
        final finds = clubs
            .where(
              (club) => club.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(
              CoachClubStateFailure('Club with name ${event.query} not found'));
        } else {
          emit(
            CoachClubStateLoaded(
              clubs: clubs,
              filteredClubs: finds,
            ),
          );
        }
      },
      orElse: () => emit(const CoachClubStateFailure('Clubs was empty')),
    );
  }

  void _onCreate(
    CoachClubEventCreate event,
    Emitter<CoachClubState> emit,
  ) async {
    final res = await _createClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachClubStateFailure(failure.message)),
      (success) => emit(CoachClubStateCreated(success)),
    );
  }

  void _onUpdate(
    CoachClubEventUpdate event,
    Emitter<CoachClubState> emit,
  ) async {
    final res = await _updateClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachClubStateFailure(failure.message)),
      (success) => emit(CoachClubStateUpdated(success)),
    );
  }

  void _onDelete(
    CoachClubEventDelete event,
    Emitter<CoachClubState> emit,
  ) async {
    final res = await _deleteClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachClubStateFailure(failure.message)),
      (success) => emit(CoachClubStateDeleted(success)),
    );
  }
}
