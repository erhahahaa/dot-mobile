part of 'tactical_cubit.dart';

@freezed
class TacticalState with _$TacticalState {
  const factory TacticalState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default([]) List<TacticalModel> tacticals,
    @Default([]) List<TacticalModel> filteredTacticals,
    @Default([]) List<MediaModel> medias,
    @Default([]) List<UserModel> audiences,
    @Default(UserModel()) UserModel user,
    @Default(TacticalStrategicModel()) TacticalStrategicModel strategic,
    TacticalModel? createdTactical,
    File? image,
    @Default(false) bool isConnected,
  }) = _TacticalState;
}
