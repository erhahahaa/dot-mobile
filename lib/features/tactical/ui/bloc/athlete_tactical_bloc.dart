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
  ) : super(const AthleteTacticalStateInitial()) {
    on<AthleteTacticalEventClear>(_onClear);
    on<AthleteTacticalEventGetTacticals>(_onGetTacticals);
    on<AthleteTacticalEventFilterTacticals>(_onFilterTacticals);
  }

  void _onClear(
    AthleteTacticalEventClear event,
    Emitter<AthleteTacticalState> emit,
  ) =>
      emit(const AthleteTacticalStateInitial());

  void _onGetTacticals(
    AthleteTacticalEventGetTacticals event,
    Emitter<AthleteTacticalState> emit,
  ) async {
    emit(const AthleteTacticalStateLoading());
    final res = await _getAllTacticalUsecase.call(event.params);

    res.fold(
      (failure) => emit(AthleteTacticalStateFailure(failure.message)),
      (success) => emit(
        AthleteTacticalStateLoaded(
          tacticals: success,
          filteredTacticals: success,
        ),
      ),
    );
  }

  void _onFilterTacticals(
    AthleteTacticalEventFilterTacticals event,
    Emitter<AthleteTacticalState> emit,
  ) {
    emit(const AthleteTacticalStateLoading());
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
          emit(AthleteTacticalStateFailure(
              'Tactical with name ${event.query} not found'));
        } else {
          emit(
            AthleteTacticalStateLoaded(
              tacticals: tacticals,
              filteredTacticals: finds,
            ),
          );
        }
      },
      orElse: () =>
          emit(const AthleteTacticalStateFailure('Tactical was empty')),
    );
  }
}
