import 'package:dot_coaching/utils/helpers/logger.dart';

void safeEmit<T>({
  required bool isClosed,
  required void Function(T) emit,
  required T state,
}) {
  if (isClosed) {
    log.e("Cubit is closed");
    return;
  } else {
    emit(state);
  }
}
