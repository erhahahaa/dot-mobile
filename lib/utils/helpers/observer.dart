import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    Log.d('''
    Event: $event on Bloc: ${bloc.runtimeType}
    ''');
    // Add your custom logic here
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    Log.d('''
    State change:
      Old: ${change.currentState}
      New: ${change.nextState}
    on Bloc: ${bloc.runtimeType}
    ''');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    Log.e('''
    Error: $error on Bloc: ${bloc.runtimeType}
    StackTrace: $stackTrace
    ''');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Log.d('''
    Transition:
      Event: ${transition.event}
      Current state: ${transition.currentState}
      Next state: ${transition.nextState}
    on Bloc: ${bloc.runtimeType}
    ''');
  }
}
