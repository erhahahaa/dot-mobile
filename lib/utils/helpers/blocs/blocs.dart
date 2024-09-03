import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

export 'bloc_event.dart';
export 'bloc_state.dart';

abstract class BlocRead<T> extends Bloc<BlocReadEvent<T>, BlocReadState<T>> {
  BlocRead(super.initialState);

  void onGet(
    BlocReadEventGet event,
    Emitter<BlocReadState<T>> emit,
  );

  void onSelect(
    BlocReadEventSelect<T> event,
    Emitter<BlocReadState<T>> emit,
  );

  void onFilter(
    BlocReadEventFilter event,
    Emitter<BlocReadState<T>> emit,
  );

  void onAppend(
    BlocReadEventAppend<T> event,
    Emitter<BlocReadState<T>> emit,
  );

  void onRemove(
    BlocReadEventRemove<T> event,
    Emitter<BlocReadState<T>> emit,
  );
}

abstract class BlocWrite<T> extends Bloc<BlocWriteEvent, BlocWriteState<T>> {
  BlocWrite(super.initialState);

  void onCreate(
    BlocWriteEventCreate event,
    Emitter<BlocWriteState<T>> emit,
  );

  void onUpdate(
    BlocWriteEventUpdate event,
    Emitter<BlocWriteState<T>> emit,
  );

  void onDelete(
    BlocWriteEventDelete event,
    Emitter<BlocWriteState<T>> emit,
  );
}
