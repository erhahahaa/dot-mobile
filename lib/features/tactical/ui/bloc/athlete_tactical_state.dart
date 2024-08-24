part of 'athlete_tactical_bloc.dart';

@freezed
class AthleteTacticalState with _$AthleteTacticalState {
  const factory AthleteTacticalState.initial() = AthleteTacticalStateInitial;
  const factory AthleteTacticalState.loading() = AthleteTacticalStateLoading;
  const factory AthleteTacticalState.loaded({
    required List<TacticalModel> tacticals,
    required List<TacticalModel> filteredTacticals,
  }) = AthleteTacticalStateLoaded;
  const factory AthleteTacticalState.failure(
    String message,
  ) = AthleteTacticalStateFailure;
}
