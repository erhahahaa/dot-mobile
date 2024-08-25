import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExerciseBlocRead extends BlocRead<ExerciseModel> {
  final GetAllExerciseUsecase _getAllExerciseUsecase;

  ExerciseBlocRead(this._getAllExerciseUsecase)
      : super(const BlocStateReadInitial()) {
    on<BlocEventReadClear<ExerciseModel>>(onClear);
    on<BlocEventReadGet<ExerciseModel>>(onGet);
    on<BlocEventReadSelect<ExerciseModel>>(onSelect);
    on<BlocEventReadFilter<ExerciseModel>>(onFilter);
    on<BlocEventReadAppend<ExerciseModel>>(onAppend);
    on<BlocEventReadRemove<ExerciseModel>>(onRemove);
  }

  @override
  void onGet(
    BlocEventReadGet event,
    Emitter<BlocStateRead<ExerciseModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocStateRead.failure('Id required'));
    }
    emit(const BlocStateReadLoading());

    final res = await _getAllExerciseUsecase.call(
      GetAllExerciseParams(programId: id),
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
    BlocEventReadSelect<ExerciseModel> event,
    Emitter<BlocStateRead<ExerciseModel>> emit,
  ) {
    state.maybeWhen(
      success: (exercises, filteredExercises, _) {
        emit(BlocStateReadSuccess(
          items: exercises,
          filteredItems: filteredExercises,
          selectedItem: event.item,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<ExerciseModel>> emit,
  ) {
    state.maybeWhen(
      success: (exercises, _, __) {
        final finds = exercises
            .where(
              (exercise) => exercise.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocStateReadSuccess(
          items: exercises,
          filteredItems: finds,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onAppend(
    BlocEventReadAppend<ExerciseModel> event,
    Emitter<BlocStateRead<ExerciseModel>> emit,
  ) {
    state.maybeWhen(
      success: (exercises, _, __) {
        final items = [...exercises, event.item];

        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
          selectedItem: null,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onRemove(
    BlocEventReadRemove<ExerciseModel> event,
    Emitter<BlocStateRead<ExerciseModel>> emit,
  ) {
    state.maybeWhen(
      success: (exercises, _, __) {
        final items =
            exercises.where((exercise) => exercise.id != event.id).toList();

        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
          selectedItem: null,
        ));
      },
      orElse: () => null,
    );
  }
}

@lazySingleton
class ExerciseBlocWrite extends BlocWrite<List<ExerciseModel>> {
  final CreateExerciseBatchUsecase _createExerciseBatchUsecase;
  final UpdateExerciseBatchUsecase _updateExerciseBatchUsecase;
  final DeleteExerciseUsecase _deleteExerciseUsecase;

  ExerciseBlocWrite(
    this._createExerciseBatchUsecase,
    this._updateExerciseBatchUsecase,
    this._deleteExerciseUsecase,
  ) : super(const BlocStateWriteInitial()) {
    on<BlocEventWriteCreate>(onCreate);
    on<BlocEventWriteUpdate>(onUpdate);
    on<BlocEventWriteDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocEventWriteCreate event,
    Emitter<BlocStateWrite<List<ExerciseModel>>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _createExerciseBatchUsecase.call(
      event.params as List<CreateExerciseParams>,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocEventWriteUpdate event,
    Emitter<BlocStateWrite<List<ExerciseModel>>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _updateExerciseBatchUsecase.call(
      event.params as List<UpdateExerciseParams>,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) => emit(BlocStateWriteSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocEventWriteDelete event,
    Emitter<BlocStateWrite<List<ExerciseModel>>> emit,
  ) async {
    emit(const BlocStateWriteLoading());
    final res = await _deleteExerciseUsecase.call(
      event.params as DeleteExerciseParams,
    );

    res.fold(
      (failure) => emit(BlocStateWriteFailure(failure.message)),
      (success) {
        final items = state.maybeWhen(
          success: (items) => items,
          orElse: () => null,
        );
        if (items == null) return;
        final filteredItems = items
            .where(
              (exercise) => exercise.id != success.id,
            )
            .toList();

        emit(BlocStateWriteSuccess(filteredItems));
      },
    );
  }
}
