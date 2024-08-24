import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tactical_bloc.freezed.dart';
part 'tactical_event.dart';
part 'tactical_state.dart';

@lazySingleton
class TacticalBloc extends Bloc<TacticalEvent, TacticalState> {
  final GetAllTacticalUsecase _getAllTacticalUsecase;
  final CreateTacticalUsecase _createTacticalUsecase;
  final UpdateTacticalUsecase _updateTacticalUsecase;
  final DeleteTacticalUsecase _deleteTacticalUsecase;

  TacticalBloc(
    this._getAllTacticalUsecase,
    this._createTacticalUsecase,
    this._updateTacticalUsecase,
    this._deleteTacticalUsecase,
  ) : super(const TacticalStateInitial()) {
    on<TacticalEventClear>(_onClear);
    on<TacticalEventGetTacticals>(_onGetTacticals);
    on<TacticalEventFilterTacticals>(_onFilterTacticals);
    on<TacticalEventCreate>(_onCreate);
    on<TacticalEventUpdate>(_onUpdate);
    on<TacticalEventDelete>(_onDelete);
  }

  void _onClear(
    TacticalEventClear event,
    Emitter<TacticalState> emit,
  ) =>
      emit(const TacticalStateInitial());

  void _onGetTacticals(
    TacticalEventGetTacticals event,
    Emitter<TacticalState> emit,
  ) async {
    emit(const TacticalStateLoading());
    final res = await _getAllTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(TacticalStateFailure(failure.message)),
      (success) => emit(
        TacticalStateLoaded(
          tacticals: success,
          filteredTacticals: success,
        ),
      ),
    );
  }

  void _onFilterTacticals(
    TacticalEventFilterTacticals event,
    Emitter<TacticalState> emit,
  ) {
    emit(const TacticalStateLoading());
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
          emit(TacticalStateFailure(
              'Tactical with name ${event.query} not found'));
        } else {
          emit(
            TacticalStateLoaded(
              tacticals: tacticals,
              filteredTacticals: finds,
            ),
          );
        }
      },
      orElse: () => emit(const TacticalStateFailure('Tactical was empty')),
    );
  }

  void _onCreate(
    TacticalEventCreate event,
    Emitter<TacticalState> emit,
  ) async {
    final res = await _createTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(TacticalStateFailure(failure.message)),
      (success) => emit(TacticalStateCreated(success)),
    );
  }

  void _onUpdate(
    TacticalEventUpdate event,
    Emitter<TacticalState> emit,
  ) async {
    final res = await _updateTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(TacticalStateFailure(failure.message)),
      (success) => emit(TacticalStateUpdated(success)),
    );
  }

  void _onDelete(
    TacticalEventDelete event,
    Emitter<TacticalState> emit,
  ) async {
    final res = await _deleteTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(TacticalStateFailure(failure.message)),
      (success) => emit(TacticalStateDeleted(success)),
    );
  }
}
