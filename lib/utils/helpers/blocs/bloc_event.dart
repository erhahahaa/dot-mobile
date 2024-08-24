import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_event.freezed.dart';

@Freezed(genericArgumentFactories: true)
class BlocEventRead<T> with _$BlocEventRead<T> {
  const factory BlocEventRead.clear() = BlocEventReadClear;
  const factory BlocEventRead.get({int? id}) = BlocEventReadGet;
  const factory BlocEventRead.select(T item) = BlocEventReadSelect<T>;
  const factory BlocEventRead.filter(String query) = BlocEventReadFilter;
}

@Freezed(genericArgumentFactories: true)
class BlocEventWrite with _$BlocEventWrite {
  const factory BlocEventWrite.create(dynamic params) = BlocEventWriteCreate;
  const factory BlocEventWrite.update(dynamic params) = BlocEventWriteUpdate;
  const factory BlocEventWrite.delete(dynamic params) = BlocEventWriteDelete;
}
