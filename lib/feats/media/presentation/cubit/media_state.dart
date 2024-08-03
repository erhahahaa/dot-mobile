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
    @Default([]) List<MediaModel> tacticalMedias,
    @Default(false) bool showClub,
    @Default(false) bool showProgram,
    @Default(false) bool showExercise,
    @Default(false) bool showExam,
    @Default(false) bool showQuestion,
    @Default(false) bool showTactical,
  }) = _MediaState;
}
