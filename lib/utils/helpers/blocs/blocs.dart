import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

export 'bloc_event.dart';
export 'bloc_state.dart';

abstract class BlocRead<T> extends Bloc<BlocEventRead<T>, BlocStateRead<T>> {
  BlocRead(super.initialState);

  void onClear(
    BlocEventReadClear event,
    Emitter<BlocStateRead<T>> emit,
  ) =>
      emit(const BlocStateReadInitial());

  void onGet(
    BlocEventReadGet event,
    Emitter<BlocStateRead<T>> emit,
  );

  void onSelect(
    BlocEventReadSelect<T> event,
    Emitter<BlocStateRead<T>> emit,
  );

  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<T>> emit,
  );

  void onAppend(
    BlocEventReadAppend<T> event,
    Emitter<BlocStateRead<T>> emit,
  );

  void onRemove(
    BlocEventReadRemove<T> event,
    Emitter<BlocStateRead<T>> emit,
  );
}

abstract class BlocWrite<T> extends Bloc<BlocEventWrite, BlocStateWrite<T>> {
  BlocWrite(super.initialState);

  void onCreate(
    BlocEventWriteCreate event,
    Emitter<BlocStateWrite<T>> emit,
  );

  void onUpdate(
    BlocEventWriteUpdate event,
    Emitter<BlocStateWrite<T>> emit,
  );

  void onDelete(
    BlocEventWriteDelete event,
    Emitter<BlocStateWrite<T>> emit,
  );
}
