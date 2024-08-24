part of 'tactical_bloc.dart';

@freezed
class TacticalState with _$TacticalState {
  const factory TacticalState.initial() = TacticalStateInitial;
  const factory TacticalState.loading() = TacticalStateLoading;
  const factory TacticalState.success({
    required List<TacticalModel> tacticals,
    required List<TacticalModel> filteredTacticals,
  }) = TacticalStateSuccess;
  const factory TacticalState.failure(String message) = TacticalStateFailure;

  // Actions
  const factory TacticalState.created(
    TacticalModel tactical,
  ) = TacticalStateCreated;
  const factory TacticalState.updated(
    TacticalModel tactical,
  ) = TacticalStateUpdated;
  const factory TacticalState.deleted(
    TacticalModel tactical,
  ) = TacticalStateDeleted;
}
