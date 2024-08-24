import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'program_bloc.freezed.dart';
part 'program_event.dart';
part 'program_state.dart';

@lazySingleton
class ProgramBloc extends Bloc<ProgramEvent, ProgramState> {
  final GetAllProgramUsecase _getAllProgramUsecase;
  final CreateProgramUsecase _createProgramUsecase;
  final UpdateProgramUsecase _updateProgramUsecase;
  final DeleteProgramUsecase _deleteProgramUsecase;

  ProgramBloc(
    this._getAllProgramUsecase,
    this._createProgramUsecase,
    this._updateProgramUsecase,
    this._deleteProgramUsecase,
  ) : super(const ProgramStateInitial()) {
    on<ProgramEventClear>(_onClear);
    on<ProgramEventGetPrograms>(_onGetPrograms);
    on<ProgramEventFilterPrograms>(_onFilterPrograms);
    on<ProgramEventSelectProgram>(_onSelectProgram);
    on<ProgramEventCreate>(_onCreate);
    on<ProgramEventUpdate>(_onUpdate);
    on<ProgramEventDelete>(_onDelete);
  }
  void _onClear(
    ProgramEventClear event,
    Emitter<ProgramState> emit,
  ) =>
      emit(const ProgramStateInitial());

  void _onGetPrograms(
    ProgramEventGetPrograms event,
    Emitter<ProgramState> emit,
  ) async {
    emit(const ProgramStateLoading());
    final res = await _getAllProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(ProgramStateFailure(failure.message)),
      (success) => emit(
        ProgramStateLoaded(
          programs: success,
          filteredPrograms: success,
        ),
      ),
    );
  }

  void _onFilterPrograms(
    ProgramEventFilterPrograms event,
    Emitter<ProgramState> emit,
  ) {
    emit(const ProgramStateLoading());
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
          emit(ProgramStateFailure(
              'Program with name ${event.query} not foundl'));
        } else {
          emit(
            ProgramStateLoaded(
              programs: programs,
              filteredPrograms: finds,
            ),
          );
        }
      },
      orElse: () => emit(const ProgramStateFailure('Programs was empty')),
    );
  }

  void _onSelectProgram(
    ProgramEventSelectProgram event,
    Emitter<ProgramState> emit,
  ) {
    state.maybeWhen(
      loaded: (programs, filteredPrograms, _) {
        emit(
          ProgramStateLoaded(
            programs: programs,
            filteredPrograms: filteredPrograms,
            selectedProgram: event.program,
          ),
        );
      },
      orElse: () => emit(const ProgramStateFailure('Programs was empty')),
    );
  }

  void _onCreate(
    ProgramEventCreate event,
    Emitter<ProgramState> emit,
  ) async {
    final res = await _createProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(ProgramStateFailure(failure.message)),
      (success) => emit(ProgramStateCreated(success)),
    );
  }

  void _onUpdate(
    ProgramEventUpdate event,
    Emitter<ProgramState> emit,
  ) async {
    final res = await _updateProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(ProgramStateFailure(failure.message)),
      (success) => emit(ProgramStateUpdated(success)),
    );
  }

  void _onDelete(
    ProgramEventDelete event,
    Emitter<ProgramState> emit,
  ) async {
    final res = await _deleteProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(ProgramStateFailure(failure.message)),
      (success) => emit(ProgramStateDeleted(success)),
    );
  }
}
