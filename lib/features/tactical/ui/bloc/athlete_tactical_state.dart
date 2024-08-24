part of 'athlete_tactical_bloc.dart';

@freezed
class AthleteTacticalState with _$AthleteTacticalState {
  const factory AthleteTacticalState.initial() = _Initial;
  const factory AthleteTacticalState.loading() = _Loading;
  const factory AthleteTacticalState.loaded({
    required List<TacticalModel> tacticals,
    required List<TacticalModel> filteredTacticals,
  }) = _Loaded;
  const factory AthleteTacticalState.failure(String message) = _Failure;
}
