part of 'media_cubit.dart';

@freezed
class MediaState with _$MediaState {
  const factory MediaState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default([]) List<MediaModel> clubMedias,
    @Default([]) List<MediaModel> programMedias,
    @Default([]) List<MediaModel> exerciseMedias,
    @Default([]) List<MediaModel> examMedias,
    @Default([]) List<MediaModel> questionMedias,
  }) = _MediaState;
}
