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
  ) : super(const CoachProgramStateInitial()) {
    on<CoachProgramEventClear>(_onClear);
    on<CoachProgramEventGetPrograms>(_onGetPrograms);
    on<CoachProgramEventFilterPrograms>(_onFilterPrograms);
    on<CoachProgramEventCreate>(_onCreate);
    on<CoachProgramEventUpdate>(_onUpdate);
    on<CoachProgramEventDelete>(_onDelete);
  }
  void _onClear(
    CoachProgramEventClear event,
    Emitter<CoachProgramState> emit,
  ) =>
      emit(const CoachProgramStateInitial());

  void _onGetPrograms(
    CoachProgramEventGetPrograms event,
    Emitter<CoachProgramState> emit,
  ) async {
    emit(const CoachProgramStateLoading());
    final res = await _getAllProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachProgramStateFailure(failure.message)),
      (success) => emit(
        CoachProgramStateLoaded(
          programs: success,
          filteredPrograms: success,
        ),
      ),
    );
  }

  void _onFilterPrograms(
    CoachProgramEventFilterPrograms event,
    Emitter<CoachProgramState> emit,
  ) {
    emit(const CoachProgramStateLoading());
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
          emit(CoachProgramStateFailure(
              'Program with name ${event.query} not foundl'));
        } else {
          emit(
            CoachProgramStateLoaded(
              programs: programs,
              filteredPrograms: finds,
            ),
          );
        }
      },
      orElse: () => emit(const CoachProgramStateFailure('Programs was empty')),
    );
  }

  void _onCreate(
    CoachProgramEventCreate event,
    Emitter<CoachProgramState> emit,
  ) async {
    final res = await _createProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachProgramStateFailure(failure.message)),
      (success) => emit(CoachProgramStateCreated(success)),
    );
  }

  void _onUpdate(
    CoachProgramEventUpdate event,
    Emitter<CoachProgramState> emit,
  ) async {
    final res = await _updateProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachProgramStateFailure(failure.message)),
      (success) => emit(CoachProgramStateUpdated(success)),
    );
  }

  void _onDelete(
    CoachProgramEventDelete event,
    Emitter<CoachProgramState> emit,
  ) async {
    final res = await _deleteProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(CoachProgramStateFailure(failure.message)),
      (success) => emit(CoachProgramStateDeleted(success)),
    );
  }
}
