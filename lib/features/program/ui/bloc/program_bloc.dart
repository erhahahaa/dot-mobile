import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProgramBlocRead extends BlocRead<ProgramModel> {
  final GetAllProgramUsecase _getAllProgramUsecase;

  ProgramBlocRead(this._getAllProgramUsecase)
      : super(const BlocStateReadInitial()) {
    on<BlocEventReadClear<ProgramModel>>(onClear);
    on<BlocEventReadGet<ProgramModel>>(onGet);
    on<BlocEventReadSelect<ProgramModel>>(onSelect);
    on<BlocEventReadFilter<ProgramModel>>(onFilter);
  }

  @override
  void onGet(
    BlocEventReadGet event,
    Emitter<BlocStateRead<ProgramModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocStateRead.failure('Id required'));
    }
    emit(const BlocStateReadLoading());

    final res = await _getAllProgramUsecase.call(
      GetAllProgramParams(clubId: id),
    );

    res.fold(
      (failure) => emit(BlocStateReadFailure(failure.message)),
      (success) => emit(BlocStateReadSuccess(
        items: success,
        filteredItems: success,
      )),
    );
  }

  @override
  void onSelect(
    BlocEventReadSelect<ProgramModel> event,
    Emitter<BlocStateRead<ProgramModel>> emit,
  ) {
    state.maybeWhen(
      success: (programs, filteredPrograms, _) {
        emit(BlocStateReadSuccess(
          items: programs,
          filteredItems: filteredPrograms,
          selectedItem: event.item,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<ProgramModel>> emit,
  ) {
    state.maybeWhen(
      success: (programs, _, __) {
        final finds = programs
            .where(
              (program) => program.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocStateReadSuccess(
          items: programs,
          filteredItems: finds,
        ));
      },
      orElse: () => null,
    );
  }
}

@lazySingleton
class ProgramBlocWrite extends BlocWrite<ProgramModel> {
  final CreateProgramUsecase _createProgramUsecase;
  final UpdateProgramUsecase _updateProgramUsecase;
  final DeleteProgramUsecase _deleteProgramUsecase;

  ProgramBlocWrite(
    this._createProgramUsecase,
    this._updateProgramUsecase,
    this._deleteProgramUsecase,
  ) : super(const BlocStateWriteInitial()) {
    on<BlocEventWriteCreate>(onCreate);
    on<BlocEventWriteUpdate>(onUpdate);
    on<BlocEventWriteDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocEventWriteCreate event,
    Emitter<BlocStateWrite<ProgramModel>> emit,
  ) async {
    final res =
        await _createProgramUsecase.call(event.params as CreateProgramParams);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocEventWriteUpdate event,
    Emitter<BlocStateWrite<ProgramModel>> emit,
  ) async {
    final res = await _updateProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocEventWriteDelete event,
    Emitter<BlocStateWrite<ProgramModel>> emit,
  ) async {
    final res = await _deleteProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }
}
