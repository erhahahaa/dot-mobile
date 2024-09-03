import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_event.freezed.dart';

@Freezed(genericArgumentFactories: true)
class BlocReadEvent<T> with _$BlocReadEvent<T> {
  const factory BlocReadEvent.get({
    int? id,
    String? query,
  }) = BlocReadEventGet;
  const factory BlocReadEvent.select(T? item) = BlocReadEventSelect<T>;
  const factory BlocReadEvent.filter(String query) = BlocReadEventFilter;
  const factory BlocReadEvent.append(T item) = BlocReadEventAppend<T>;
  const factory BlocReadEvent.remove(int id) = BlocReadEventRemove<T>;
  const factory BlocReadEvent.getOne(dynamic params) = BlocReadEventGetOne<T>;
}

@Freezed(genericArgumentFactories: true)
class BlocWriteEvent with _$BlocWriteEvent {
  const factory BlocWriteEvent.create(dynamic params) = BlocWriteEventCreate;
  const factory BlocWriteEvent.update(dynamic params) = BlocWriteEventUpdate;
  const factory BlocWriteEvent.delete(dynamic params) = BlocWriteEventDelete;
}
