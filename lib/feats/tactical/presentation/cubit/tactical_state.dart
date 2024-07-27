part of 'tactical_cubit.dart';

@freezed
class TacticalState with _$TacticalState {
  const factory TacticalState({
    @Default(BaseState.initial) BaseState state,
  }) = _TacticalState;
}
