import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'athlete_tactical_bloc.freezed.dart';
part 'athlete_tactical_event.dart';
part 'athlete_tactical_state.dart';

@lazySingleton
class AthleteTacticalBloc
    extends Bloc<AthleteTacticalEvent, AthleteTacticalState> {
  final GetAllTacticalUsecase _getAllTacticalUsecase;

  AthleteTacticalBloc(
    this._getAllTacticalUsecase,
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetTacticals>(_onGetTacticals);
    on<_FilterTacticals>(_onFilterTacticals);
  }

  void _onClear(
    _Clear event,
    Emitter<AthleteTacticalState> emit,
  ) =>
      emit(_Initial());

  void _onGetTacticals(
    _GetTacticals event,
    Emitter<AthleteTacticalState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          tacticals: success,
          filteredTacticals: success,
        ),
      ),
    );
  }

  void _onFilterTacticals(
    _FilterTacticals event,
    Emitter<AthleteTacticalState> emit,
  ) {
    emit(_Loading());
    state.maybeWhen(
      loaded: (tacticals, _) {
        final finds = tacticals
            .where(
              (tactical) => tactical.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();
        if (finds.isEmpty) {
          emit(_Failure('Tactical with name ${event.query} not found'));
        } else {
          emit(
            _Loaded(
              tacticals: tacticals,
              filteredTacticals: finds,
            ),
          );
        }
      },
      orElse: () => emit(_Failure('Tactical was empty')),
    );
  }
}
