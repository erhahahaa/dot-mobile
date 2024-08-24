import 'package:dot_coaching/features/feature.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coach_program_bloc.freezed.dart';
part 'coach_program_event.dart';
part 'coach_program_state.dart';

@lazySingleton
class CoachProgramBloc extends Bloc<CoachProgramEvent, CoachProgramState> {
  final GetAllProgramUsecase _getAllProgramUsecase;
  final CreateProgramUsecase _createProgramUsecase;
  final UpdateProgramUsecase _updateProgramUsecase;
  final DeleteProgramUsecase _deleteProgramUsecase;

  CoachProgramBloc(
    this._getAllProgramUsecase,
    this._createProgramUsecase,
    this._updateProgramUsecase,
    this._deleteProgramUsecase,
  ) : super(_Initial()) {
    on<_Clear>(_onClear);
    on<_GetPrograms>(_onGetPrograms);
    on<_FilterPrograms>(_onFilterPrograms);
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
  }
  void _onClear(
    _Clear event,
    Emitter<CoachProgramState> emit,
  ) =>
      emit(_Initial());

  void _onGetPrograms(
    _GetPrograms event,
    Emitter<CoachProgramState> emit,
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
    Emitter<CoachProgramState> emit,
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

  void _onCreate(
    _Create event,
    Emitter<CoachProgramState> emit,
  ) async {
    final res = await _createProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Created(success)),
    );
  }

  void _onUpdate(
    _Update event,
    Emitter<CoachProgramState> emit,
  ) async {
    final res = await _updateProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Updated(success)),
    );
  }

  void _onDelete(
    _Delete event,
    Emitter<CoachProgramState> emit,
  ) async {
    final res = await _deleteProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(_Failure(failure.message)),
      (success) => emit(_Deleted(success)),
    );
  }
}
