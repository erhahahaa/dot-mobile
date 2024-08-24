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
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetClubs>(_onGetClubs);
    on<_FilterClubs>(_onFilterClubs);
  }

  void _onClear(
    _Clear event,
    Emitter<AthleteClubState> emit,
  ) =>
      emit(_Initial());

  void _onGetClubs(
    _GetClubs event,
    Emitter<AthleteClubState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllClubUsecase.call();
    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          clubs: success,
          filteredClubs: success,
        ),
      ),
    );
  }

  void _onFilterClubs(
    _FilterClubs event,
    Emitter<AthleteClubState> emit,
  ) {
    state.maybeWhen(
      loaded: (clubs, filteredClubs) {
        final finds = clubs
            .where(
              (club) => club.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(
          _Loaded(
            clubs: clubs,
            filteredClubs: finds,
          ),
        );
      },
      orElse: () => null,
    );
  }
}
