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
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetClubs>(_onGetClubs);
    on<_FilterClubs>(_onFilterClubs);
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
  }
  void _onClear(
    _Clear event,
    Emitter<CoachClubState> emit,
  ) =>
      emit(_Initial());

  void _onGetClubs(
    _GetClubs event,
    Emitter<CoachClubState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllClubUsecase.call();

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          CoachClubLoadedEvent(clubs: success, filteredClubs: success),
        ),
      ),
    );
  }

  void _onFilterClubs(
    _FilterClubs event,
    Emitter<CoachClubState> emit,
  ) {
    emit(_Loading());
    state.maybeWhen(
      loaded: (data) {
        final finds = data.clubs
            .where(
              (club) => club.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(_Failure('Club with name ${event.query} not found'));
        } else {
          emit(
            _Loaded(
              CoachClubLoadedEvent(
                clubs: data.clubs,
                filteredClubs: finds,
              ),
            ),
          );
        }
      },
      orElse: () => emit(_Failure('Clubs was empty')),
    );
  }

  void _onCreate(
    _Create event,
    Emitter<CoachClubState> emit,
  ) async {
    final res = await _createClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Created(success)),
    );
  }

  void _onUpdate(
    _Update event,
    Emitter<CoachClubState> emit,
  ) async {
    final res = await _updateClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Updated(success)),
    );
  }

  void _onDelete(
    _Delete event,
    Emitter<CoachClubState> emit,
  ) async {
    final res = await _deleteClubUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Deleted(success)),
    );
  }
}
