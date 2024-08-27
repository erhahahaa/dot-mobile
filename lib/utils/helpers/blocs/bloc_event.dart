import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_event.freezed.dart';

@Freezed(genericArgumentFactories: true)
class BlocEventRead<T> with _$BlocEventRead<T> {
  const factory BlocEventRead.clear() = BlocEventReadClear;
  const factory BlocEventRead.get({
    int? id,
    String? query
  }) = BlocEventReadGet;
  const factory BlocEventRead.select(T? item) = BlocEventReadSelect<T>;
  const factory BlocEventRead.filter(String query) = BlocEventReadFilter;
  const factory BlocEventRead.append(T item) = BlocEventReadAppend<T>;
  const factory BlocEventRead.remove(int id) = BlocEventReadRemove<T>;
  const factory BlocEventRead.getOne(dynamic params) = BlocEventReadGetOne<T>;
}

@Freezed(genericArgumentFactories: true)
class BlocEventWrite with _$BlocEventWrite {
  const factory BlocEventWrite.create(dynamic params) = BlocEventWriteCreate;
  const factory BlocEventWrite.update(dynamic params) = BlocEventWriteUpdate;
  const factory BlocEventWrite.delete(dynamic params) = BlocEventWriteDelete;
}
