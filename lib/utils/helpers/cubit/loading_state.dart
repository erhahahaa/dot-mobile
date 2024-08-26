part of 'loading_cubit.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState({
    @Default(false) bool? isLoading,
    @Default(0) int? count,
    @Default(1) int? total,
  }) = _LoadingState;
}
