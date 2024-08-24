import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'athlete_program_bloc.freezed.dart';
part 'athlete_program_event.dart';
part 'athlete_program_state.dart';

@lazySingleton
class AthleteProgramBloc
    extends Bloc<AthleteProgramEvent, AthleteProgramState> {
  final GetAllProgramUsecase _getAllProgramUsecase;

  AthleteProgramBloc(
    this._getAllProgramUsecase,
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetPrograms>(_onGetPrograms);
    on<_FilterPrograms>(_onFilterPrograms);
  }

  void _onClear(
    _Clear event,
    Emitter<AthleteProgramState> emit,
  ) =>
      emit(_Initial());

  void _onGetPrograms(
    _GetPrograms event,
    Emitter<AthleteProgramState> emit,
  ) async {
    emit(_Loading());
    final res = await _getAllProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(
        _Loaded(
          programs: success,
          filteredPrograms: success,
        ),
      ),
    );
  }

  void _onFilterPrograms(
    _FilterPrograms event,
    Emitter<AthleteProgramState> emit,
  ) {
    emit(_Loading());
    state.maybeWhen(
      loaded: (programs, _) {
        final finds = programs
            .where(
              (program) => program.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(_Failure('Program with name ${event.query} not foundl'));
        } else {
          emit(
            _Loaded(
              programs: programs,
              filteredPrograms: finds,
            ),
          );
        }
      },
      orElse: () => emit(_Failure('Programs was empty')),
    );
  }
}
