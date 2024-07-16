import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
class PaginationParams with _$PaginationParams {
  const factory PaginationParams({
    @Default(0) int cursor,
    @Default(10) int limit,
  }) = _PaginationParams;
}
