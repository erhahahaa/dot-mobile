import 'dart:io';
import 'dart:math';

import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

part 'program_cubit.freezed.dart';
part 'program_state.dart';

class ProgramCubit extends Cubit<ProgramState> {
  final ProgramRepo _programRepo;
  final ImagePickerClient _imagePickerClient;

  ProgramCubit(
    this._programRepo,
    this._imagePickerClient,
  ) : super(const ProgramState());

  void clear() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: const ProgramState(),
    );
  }

  void emitInitial() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.initial),
      );

  void emitLoading() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.loading),
      );

  Future<void> init({
    int? clubId,
  }) async {
    if (clubId == null) return;
    await getAll(clubId);
  }

  Future<void> create(CreateProgramParams params) async {
    emitLoading();
    final res = await _programRepo.create(params);

    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
        Future.delayed(
          const Duration(seconds: 2),
          () => safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              failure: null,
            ),
          ),
        );
      },
      (r) {
        final List<ProgramModel> programs = List.from(state.programs);
        programs.add(r);

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            createdProgram: r,
            programs: programs,
            image: null,
          ),
        );
      },
    );
  }

  Future<void> update(UpdateProgramParams params) async {
    emitLoading();

    final res = await _programRepo.update(params);

    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
        Future.delayed(
          const Duration(seconds: 2),
          () => safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              failure: null,
            ),
          ),
        );
      },
      (r) {
        final List<ProgramModel> programs = List.from(state.programs);
        final index = programs.indexWhere((element) => element.id == r.id);
        programs[index] = r;

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            createdProgram: r,
            programs: programs,
            image: null,
          ),
        );
      },
    );
  }

  Future<void> delete(ByIdParams params) async {
    emitLoading();

    final res = await _programRepo.delete(params);

    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
        Future.delayed(
          const Duration(seconds: 2),
          () => safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              failure: null,
            ),
          ),
        );
      },
      (r) {
        final List<ProgramModel> exercises = List.from(state.programs);
        exercises.removeWhere((element) => element.id == r.id);

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            programs: exercises,
          ),
        );
      },
    );
  }

  Future<void> getById(ByIdParams params) async {
    emitLoading();

    final res = await _programRepo.getById(params);

    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
        Future.delayed(
          const Duration(seconds: 2),
          () => safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              failure: null,
            ),
          ),
        );
      },
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
          ),
        );
      },
    );
  }

  Future<void> getAll(int clubId) async {
    emitLoading();
    final res = await _programRepo.getAll(
      const PaginationParams(),
      clubId,
    );

    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
      },
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            programs: r,
            
          ),
        );
      },
    );
  }

  Future<bool> pickImageFromGallery() async {
    final res = await _imagePickerClient.getImageFromGallery();

    return res.fold(
      (l) => false,
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            image: File(r.path),
          ),
        );
        return true;
      },
    );
  }
}

class ProgramDataSource extends CalendarDataSource {
  ProgramDataSource(List<ProgramModel> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].startDate;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].endDate;
  }

  @override
  String getSubject(int index) {
    return appointments![index].name;
  }

  @override
  Color getColor(int index) {
    // return appointments![index].background;
    return getRandomColor();
  }

  @override
  bool isAllDay(int index) {
    // return appointments![index].isAllDay;
    return true;
  }
}

Color getRandomColor() {
  Random random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}
