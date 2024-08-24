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
  ) : super(const AthleteProgramStateInitial()) {
    on<AthleteProgramEventClear>(_onClear);
    on<AthleteProgramEventGetPrograms>(_onGetPrograms);
    on<AthleteProgramEventFilterPrograms>(_onFilterPrograms);
    on<AthleteProgramEventSelectProgram>(_onSelectProgram);
  }

  void _onClear(
    AthleteProgramEventClear event,
    Emitter<AthleteProgramState> emit,
  ) =>
      emit(const AthleteProgramStateInitial());

  void _onGetPrograms(
    AthleteProgramEventGetPrograms event,
    Emitter<AthleteProgramState> emit,
  ) async {
    emit(const AthleteProgramStateLoading());
    final res = await _getAllProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(AthleteProgramStateFailure(failure.message)),
      (success) => emit(
        AthleteProgramStateLoaded(
          programs: success,
          filteredPrograms: success,
        ),
      ),
    );
  }

  void _onFilterPrograms(
    AthleteProgramEventFilterPrograms event,
    Emitter<AthleteProgramState> emit,
  ) {
    emit(const AthleteProgramStateLoading());
    state.maybeWhen(
      loaded: (programs, _, __) {
        final finds = programs
            .where(
              (program) => program.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        if (finds.isEmpty) {
          emit(AthleteProgramStateFailure(
              'Program with name ${event.query} not foundl'));
        } else {
          emit(
            AthleteProgramStateLoaded(
              programs: programs,
              filteredPrograms: finds,
            ),
          );
        }
      },
      orElse: () =>
          emit(const AthleteProgramStateFailure('Programs was empty')),
    );
  }

  void _onSelectProgram(
    AthleteProgramEventSelectProgram event,
    Emitter<AthleteProgramState> emit,
  ) {
    state.maybeWhen(
      loaded: (programs, filteredPrograms, _) {
        emit(
          AthleteProgramStateLoaded(
            programs: programs,
            filteredPrograms: filteredPrograms,
            selectedProgram: event.program,
          ),
        );
      },
      orElse: () => emit(const AthleteProgramStateFailure('Programs was empty')),
    );
  }
}
