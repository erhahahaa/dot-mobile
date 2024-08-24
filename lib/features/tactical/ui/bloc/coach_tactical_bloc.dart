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
  ) : super(const CoachTacticalStateInitial()) {
    on<CoachTacticalEventClear>(_onClear);
    on<CoachTacticalEventGetTacticals>(_onGetTacticals);
    on<CoachTacticalEventFilterTacticals>(_onFilterTacticals);
    on<CoachTacticalEventCreate>(_onCreate);
    on<CoachTacticalEventUpdate>(_onUpdate);
    on<CoachTacticalEventDelete>(_onDelete);
  }

  void _onClear(
    CoachTacticalEventClear event,
    Emitter<CoachTacticalState> emit,
  ) =>
      emit(const CoachTacticalStateInitial());

  void _onGetTacticals(
    CoachTacticalEventGetTacticals event,
    Emitter<CoachTacticalState> emit,
  ) async {
    emit(const CoachTacticalStateLoading());
    final res = await _getAllTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachTacticalStateFailure(failure.message)),
      (success) => emit(
        CoachTacticalStateLoaded(
          tacticals: success,
          filteredTacticals: success,
        ),
      ),
    );
  }

  void _onFilterTacticals(
    CoachTacticalEventFilterTacticals event,
    Emitter<CoachTacticalState> emit,
  ) {
    emit(const CoachTacticalStateLoading());
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
          emit(CoachTacticalStateFailure(
              'Tactical with name ${event.query} not found'));
        } else {
          emit(
            CoachTacticalStateLoaded(
              tacticals: tacticals,
              filteredTacticals: finds,
            ),
          );
        }
      },
      orElse: () => emit(const CoachTacticalStateFailure('Tactical was empty')),
    );
  }

  void _onCreate(
    CoachTacticalEventCreate event,
    Emitter<CoachTacticalState> emit,
  ) async {
    final res = await _createTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachTacticalStateFailure(failure.message)),
      (success) => emit(CoachTacticalStateCreated(success)),
    );
  }

  void _onUpdate(
    CoachTacticalEventUpdate event,
    Emitter<CoachTacticalState> emit,
  ) async {
    final res = await _updateTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachTacticalStateFailure(failure.message)),
      (success) => emit(CoachTacticalStateUpdated(success)),
    );
  }

  void _onDelete(
    CoachTacticalEventDelete event,
    Emitter<CoachTacticalState> emit,
  ) async {
    final res = await _deleteTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachTacticalStateFailure(failure.message)),
      (success) => emit(CoachTacticalStateDeleted(success)),
    );
  }
}
