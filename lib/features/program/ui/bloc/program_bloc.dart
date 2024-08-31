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
    on<BlocEventReadAppend<ProgramModel>>(onAppend);
    on<BlocEventReadRemove<ProgramModel>>(onRemove);
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
      (success) {
        success.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

        emit(BlocStateReadSuccess(
          items: success,
          filteredItems: success,
        ));
      },
    );
  }

  @override
  void onSelect(
    BlocEventReadSelect<ProgramModel> event,
    Emitter<BlocStateRead<ProgramModel>> emit,
  ) {
    state.whenOrNull(
      success: (programs, filteredPrograms, _) {
        emit(BlocStateReadSuccess(
          items: programs,
          filteredItems: programs,
          selectedItem: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<ProgramModel>> emit,
  ) {
    state.whenOrNull(
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
    );
  }

  @override
  void onAppend(
    BlocEventReadAppend<ProgramModel> event,
    Emitter<BlocStateRead<ProgramModel>> emit,
  ) {
    state.whenOrNull(
      success: (programs, _, __) {
        final find =
            programs.where((program) => program.id == event.item.id).toList();

        if (find.isNotEmpty) {
          final items = programs.map((program) {
            if (program.id == event.item.id) {
              return event.item;
            }
            return program;
          }).toList();

          items.sort((a, b) => a.updatedAt!.compareTo(b.updatedAt!));

          emit(BlocStateReadSuccess(
            items: items,
            filteredItems: items,
          ));
          return;
        }

        final items = [...programs, event.item];
        items.sort((a, b) => a.updatedAt!.compareTo(b.updatedAt!));

        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
        ));
      },
      failure: (_) => emit(BlocStateReadSuccess(
        items: [event.item],
        filteredItems: [event.item],
      )),
    );
  }

  @override
  void onRemove(
    BlocEventReadRemove<ProgramModel> event,
    Emitter<BlocStateRead<ProgramModel>> emit,
  ) {
    state.whenOrNull(
      success: (programs, _, __) {
        final items = programs
            .where(
              (program) => program.id != event.id,
            )
            .toList();

        items.sort((a, b) => a.updatedAt!.compareTo(b.updatedAt!));

        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
        ));
      },
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
    emit(const BlocStateWriteLoading());
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
    emit(const BlocStateWriteLoading());
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
    emit(const BlocStateWriteLoading());
    final res = await _deleteProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }
}
