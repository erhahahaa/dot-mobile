import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
class BlocStateRead<T> with _$BlocStateRead<T> {
  const factory BlocStateRead.initial() = BlocStateReadInitial;
  const factory BlocStateRead.loading() = BlocStateReadLoading;
  const factory BlocStateRead.success({
    @Default([]) List<T> items,
    @Default([]) List<T> filteredItems,
    T? selectedItem,
  }) = BlocStateReadSuccess;
  const factory BlocStateRead.failure(
    String message,
  ) = BlocStateReadFailure;
}

@Freezed(genericArgumentFactories: true)
class BlocStateWrite<T> with _$BlocStateWrite<T> {
  const factory BlocStateWrite.initial() = BlocStateWriteInitial;
  const factory BlocStateWrite.loading({
    int? count,
    int? total,
  }) = BlocStateWriteLoading;
  const factory BlocStateWrite.success(
    T item,
  ) = BlocStateWriteSuccess;
  const factory BlocStateWrite.failure(
    String message,
  ) = BlocStateWriteFailure;
}
