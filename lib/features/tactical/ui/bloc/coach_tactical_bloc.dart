import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coach_tactical_bloc.freezed.dart';
part 'coach_tactical_event.dart';
part 'coach_tactical_state.dart';

@lazySingleton
class CoachTacticalBloc extends Bloc<CoachTacticalEvent, CoachTacticalState> {
  final GetAllTacticalUsecase _getAllTacticalUsecase;
  final CreateTacticalUsecase _createTacticalUsecase;
  final UpdateTacticalUsecase _updateTacticalUsecase;
  final DeleteTacticalUsecase _deleteTacticalUsecase;

  CoachTacticalBloc(
    this._getAllTacticalUsecase,
    this._createTacticalUsecase,
    this._updateTacticalUsecase,
    this._deleteTacticalUsecase,
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetTacticals>(_onGetTacticals);
    on<_FilterTacticals>(_onFilterTacticals);
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
  }

  void _onClear(
    _Clear event,
    Emitter<CoachTacticalState> emit,
  ) =>
      emit(_Initial());

  void _onGetTacticals(
    _GetTacticals event,
    Emitter<CoachTacticalState> emit,
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
    Emitter<CoachTacticalState> emit,
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

  void _onCreate(
    _Create event,
    Emitter<CoachTacticalState> emit,
  ) async {
    final res = await _createTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Created(success)),
    );
  }

  void _onUpdate(
    _Update event,
    Emitter<CoachTacticalState> emit,
  ) async {
    final res = await _updateTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Updated(success)),
    );
  }

  void _onDelete(
    _Delete event,
    Emitter<CoachTacticalState> emit,
  ) async {
    final res = await _deleteTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Deleted(success)),
    );
  }
}
