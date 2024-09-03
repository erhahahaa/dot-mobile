import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExerciseBlocRead extends BlocRead<ExerciseModel> {
  final GetAllExerciseUsecase _getAllExerciseUsecase;

  ExerciseBlocRead(this._getAllExerciseUsecase)
      : super(const BlocReadStateInitial()) {
    on<BlocReadEventGet<ExerciseModel>>(onGet);
    on<BlocReadEventSelect<ExerciseModel>>(onSelect);
    on<BlocReadEventFilter<ExerciseModel>>(onFilter);
    on<BlocReadEventAppend<ExerciseModel>>(onAppend);
    on<BlocReadEventRemove<ExerciseModel>>(onRemove);
  }

  @override
  void onGet(
    BlocReadEventGet event,
    Emitter<BlocReadState<ExerciseModel>> emit,
  ) async {
    final id = event.id;
    if (id == null) {
      return emit(const BlocReadState.failure('Id required'));
    }
    emit(const BlocReadStateLoading());

    final res = await _getAllExerciseUsecase.call(
      GetAllExerciseParams(programId: id),
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
    BlocReadEventSelect<ExerciseModel> event,
    Emitter<BlocReadState<ExerciseModel>> emit,
  ) {
    state.whenOrNull(
      success: (exercises, __, ___) {
        emit(BlocReadStateSuccess(
          items: exercises,
          filteredItems: exercises,
          selected: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocReadEventFilter event,
    Emitter<BlocReadState<ExerciseModel>> emit,
  ) {
    state.whenOrNull(
      success: (exercises, _, selected) {
        final finds = exercises
            .where(
              (exercise) => exercise.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
            )
            .toList();

        emit(BlocReadStateSuccess(
          items: exercises,
          filteredItems: finds,
          selected: selected,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocReadEventAppend<ExerciseModel> event,
    Emitter<BlocReadState<ExerciseModel>> emit,
  ) {
    state.whenOrNull(
      success: (exercises, _, selected) {
        final find = exercises
            .where((exercise) => exercise.id == event.item.id)
            .toList();

        if (find.isNotEmpty) {
          final items = exercises.map((exercise) {
            if (exercise.id == event.item.id) {
              return event.item;
            }
            return exercise;
          }).toList();

          items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

          emit(BlocReadStateSuccess(
            items: items,
            filteredItems: items,
            selected: selected,
          ));
        }

        final items = [...exercises, event.item];

        items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

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
    BlocReadEventRemove<ExerciseModel> event,
    Emitter<BlocReadState<ExerciseModel>> emit,
  ) {
    state.whenOrNull(
      success: (exercises, _, selected) {
        final items = exercises
            .where(
              (exercise) => exercise.id != event.id,
            )
            .toList();

        items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

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
class ExerciseBlocWrite extends BlocWrite<List<ExerciseModel>> {
  final CreateExerciseBatchUsecase _createExerciseBatchUsecase;
  final UpdateExerciseBatchUsecase _updateExerciseBatchUsecase;
  final DeleteExerciseUsecase _deleteExerciseUsecase;

  ExerciseBlocWrite(
    this._createExerciseBatchUsecase,
    this._updateExerciseBatchUsecase,
    this._deleteExerciseUsecase,
  ) : super(const BlocWriteStateInitial()) {
    on<BlocWriteEventCreate>(onCreate);
    on<BlocWriteEventUpdate>(onUpdate);
    on<BlocWriteEventDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocWriteEventCreate event,
    Emitter<BlocWriteState<List<ExerciseModel>>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _createExerciseBatchUsecase.call(
      event.params as List<CreateExerciseParams>,
    );

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onUpdate(
    BlocWriteEventUpdate event,
    Emitter<BlocWriteState<List<ExerciseModel>>> emit,
  ) async {
    emit(const BlocWriteStateLoading());
    final res = await _updateExerciseBatchUsecase.call(
      event.params as List<UpdateExerciseParams>,
    );

    res.fold(
      (failure) => emit(BlocWriteStateFailure(failure.message)),
      (success) => emit(BlocWriteStateSuccess(success)),
    );
  }

  @override
  void onDelete(
    BlocWriteEventDelete event,
    Emitter<BlocWriteState<List<ExerciseModel>>> emit,
  ) async {
    await _deleteExerciseUsecase.call(
      event.params as DeleteExerciseParams,
    );
  }
}
