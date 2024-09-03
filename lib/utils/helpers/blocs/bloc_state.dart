import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
class BlocReadState<T> with _$BlocReadState<T> {
  const factory BlocReadState.initial() = BlocReadStateInitial;
  const factory BlocReadState.loading({
    int? count,
    int? total,
  }) = BlocReadStateLoading;
  const factory BlocReadState.success({
    @Default([]) List<T> items,
    @Default([]) List<T> filteredItems,
    T? selected,
  }) = BlocReadStateSuccess;
  const factory BlocReadState.failure(
    String message,
  ) = BlocReadStateFailure;
}

@Freezed(genericArgumentFactories: true)
class BlocWriteState<T> with _$BlocWriteState<T> {
  const factory BlocWriteState.initial() = BlocWriteStateInitial;
  const factory BlocWriteState.loading({
    int? count,
    int? total,
  }) = BlocWriteStateLoading;
  const factory BlocWriteState.success(
    T item,
  ) = BlocWriteStateSuccess;
  const factory BlocWriteState.failure(
    String message,
  ) = BlocWriteStateFailure;
}
