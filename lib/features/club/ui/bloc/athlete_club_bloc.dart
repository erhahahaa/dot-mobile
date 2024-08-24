import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'athlete_club_bloc.freezed.dart';
part 'athlete_club_event.dart';
part 'athlete_club_state.dart';

@lazySingleton
class AthleteClubBloc extends Bloc<AthleteClubEvent, AthleteClubState> {
  final GetAllClubUsecase _getAllClubUsecase;

  AthleteClubBloc(
    this._getAllClubUsecase,
  ) : super(const AthleteClubStateInitial()) {
    on<AthleteClubEventClear>(_onClear);
    on<AthleteClubEventGetClubs>(_onGetClubs);
    on<AthleteClubEventFilterClubs>(_onFilterClubs);
  }

  void _onClear(
    AthleteClubEventClear event,
    Emitter<AthleteClubState> emit,
  ) =>
      emit(const AthleteClubStateInitial());

  void _onGetClubs(
    AthleteClubEventGetClubs event,
    Emitter<AthleteClubState> emit,
  ) async {
    emit(const AthleteClubStateLoading());
    final res = await _getAllClubUsecase.call();
    res.fold(
      (failure) => emit(AthleteClubStateFailure(failure.message)),
      (success) => emit(
        AthleteClubStateLoaded(
          clubs: success,
          filteredClubs: success,
        ),
      ),
    );
  }

  void _onFilterClubs(
    AthleteClubEventFilterClubs event,
    Emitter<AthleteClubState> emit,
  ) {
    state.maybeWhen(
      loaded: (clubs, _) {
        final finds = clubs
            .where(
              (club) => club.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(
          AthleteClubStateLoaded(
            clubs: clubs,
            filteredClubs: finds,
          ),
        );
      },
      orElse: () => null,
    );
  }
}
