part of 'strategy_cubit.dart';

@freezed
class StrategyState with _$StrategyState {
  const factory StrategyState.initial() = _Initial;
  const factory StrategyState.loading() = _Loading;
  const factory StrategyState.success({
    @Default([]) List<UserModel> audiences,
    @Default(TacticalStrategicModel()) TacticalStrategicModel strategy,
    @Default(false) bool isConnected,
  }) = _Success;
  const factory StrategyState.failure(
    String message,
  ) = _Failure;
}
