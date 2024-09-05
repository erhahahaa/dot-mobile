import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProgramBlocRead extends BlocRead<ProgramModel> {
  final GetAllProgramUsecase _getAllProgramUsecase;

  ProgramBlocRead(this._getAllProgramUsecase)
      : super(const BlocReadStateInitial()) {
    on<BlocReadEventGet<ProgramModel>>(onGet);
    on<BlocReadEventSelect<ProgramModel>>(onSelect);
    on<BlocReadEventFilter<ProgramModel>>(onFilter);
    on<BlocReadEventAppend<ProgramModel>>(onAppend);
    on<BlocReadEventRemove<ProgramModel>>(onRemove);
  }

  @override
  void onGet(
    BlocReadEventGet event,
    Emitter<BlocReadState<ProgramModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocReadState.failure('Id required'));
    }
    emit(const BlocReadStateLoading());

    final res = await _getAllProgramUsecase.call(
      GetAllProgramParams(clubId: id),
    );

    res.fold(
      (failure) => emit(BlocReadStateFailure(failure.message)),
      (success) {
        success.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

        emit(BlocReadStateSuccess(
          items: success,
          filteredItems: success,
        ));
      },
    );
  }

  @override
  void onSelect(
    BlocReadEventSelect<ProgramModel> event,
    Emitter<BlocReadState<ProgramModel>> emit,
  ) {
    state.whenOrNull(
      success: (programs, filteredPrograms, _) {
        emit(BlocReadStateSuccess(
          items: programs,
          filteredItems: programs,
          selected: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocReadEventFilter event,
    Emitter<BlocReadState<ProgramModel>> emit,
  ) {
    state.whenOrNull(
      success: (programs, _, selected) {
        final finds = programs
            .where(
              (program) => program.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocReadStateSuccess(
          items: programs,
          filteredItems: finds,
          selected: selected,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocReadEventAppend<ProgramModel> event,
    Emitter<BlocReadState<ProgramModel>> emit,
  ) {
    state.whenOrNull(
      success: (programs, _, selected) {
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

          emit(BlocReadStateSuccess(
            items: items,
            filteredItems: items,
          ));
          return;
        }

        final items = [...programs, event.item];
        items.sort((a, b) => a.updatedAt!.compareTo(b.updatedAt!));

        emit(BlocReadStateSuccess(
          items: items,
          filteredItems: items,
          selected: selected,
        ));
      },
      failure: (_) => emit(BlocReadStateSuccess(
        items: [event.item],
        filteredItems: [event.item],
      )),
    );
  }

  @override
  void onRemove(
    BlocReadEventRemove<ProgramModel> event,
    Emitter<BlocReadState<ProgramModel>> emit,
  ) {
    state.whenOrNull(
      success: (programs, _, selected) {
        final items = programs
            .where(
              (program) => program.id != event.id,
            )
            .toList();

        items.sort((a, b) => a.updatedAt!.compareTo(b.updatedAt!));

        emit(BlocReadStateSuccess(
          items: items,
          filteredItems: items,
          selected: selected,
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
  ) : super(const BlocWriteStateInitial()) {
    on<BlocWriteEventCreate>(onCreate);
    on<BlocWriteEventUpdate>(onUpdate);
    on<BlocWriteEventDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocWriteEventCreate event,
    Emitter<BlocWriteState<ProgramModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res =
        await _createProgramUsecase.call(event.params as CreateProgramParams);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocWriteEventUpdate event,
    Emitter<BlocWriteState<ProgramModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _updateProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocWriteEventDelete event,
    Emitter<BlocWriteState<ProgramModel>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _deleteProgramUsecase.call(event.params);

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }
}
