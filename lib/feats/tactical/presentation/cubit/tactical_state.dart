part of 'tactical_cubit.dart';

@freezed
class TacticalState with _$TacticalState {
  const factory TacticalState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default([]) List<TacticalModel> tacticals,
    @Default([]) List<TacticalModel> filteredTacticals,
    @Default([]) List<MediaModel> medias,
    TacticalModel? createdTactical,
    File? image,
  }) = _TacticalState;
}
