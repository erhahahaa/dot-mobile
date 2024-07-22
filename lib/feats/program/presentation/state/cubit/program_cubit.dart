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
  final UserRepo _userRepo;

  ProgramCubit(
    this._programRepo,
    this._userRepo,
  ) : super(const ProgramState());

  void emitCaller(ProgramState s) {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: s,
    );
  }

  Future<void> init({
    required String? routeName,
    int? clubId,
  }) async {
    if (clubId == null) return;

    if (routeName == null || !routeName.startsWith('coach')) {
      await athleteInit(clubId);
    }
    if (routeName == null || routeName.startsWith('coach')) {
      await coachInit(clubId);
    }
  }

  Future<UserEntity?> fetchLocalUser() async {
    final res = await _userRepo.getMe();
    return res.fold(
      (l) => null,
      (r) => r,
    );
  }

  Future<void> coachInit(int clubId) async {
    await getAll(clubId);
  }

  Future<void> athleteInit(int clubId) async {}

  Future<void> create(CreateProgramParams params) async {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state,
    );

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
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(state: BaseState.success, createdProgram: r),
        );
      },
    );
  }

  Future<void> update(UpdateProgramParams params) async {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state,
    );

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

  Future<void> delete(ByIdParams params) async {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state,
    );

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

  Future<void> getById(ByIdParams params) async {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state,
    );

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
