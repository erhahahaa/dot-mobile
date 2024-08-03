import 'dart:io';

import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tactical_cubit.freezed.dart';
part 'tactical_state.dart';

class TacticalCubit extends Cubit<TacticalState> {
  final TacticalRepo _tacticalRepo;
  TacticalCubit(
    this._tacticalRepo,
  ) : super(const TacticalState());

  void clear() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: const TacticalState(),
    );
  }

  void emitLoading() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.loading),
      );

  Future<void> init({required int clubId}) async {
    await getAll(
      const PaginationParams(),
      clubId,
    );
  }

  Future<void> create(CreateTacticalParams params) async {
    emitLoading();
    final res = await _tacticalRepo.create(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      final List<TacticalModel> tacticals = List.from(state.tacticals);
      tacticals.add(r);

      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          createdTactical: r,
          tacticals: tacticals,
          filteredTacticals: tacticals,
        ),
      );
    });
  }

  Future<void> update(UpdateTacticalParams params) async {
    emitLoading();

    final res = await _tacticalRepo.update(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      final List<TacticalModel> tacticals = List.from(state.tacticals);
      final index = tacticals.indexWhere((element) => element.id == r.id);
      tacticals[index] = r;

      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          createdTactical: r,
          tacticals: tacticals,
          filteredTacticals: tacticals,
        ),
      );
    });
  }

  Future<void> delete(ByIdParams params) async {
    final res = await _tacticalRepo.delete(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      final List<TacticalModel> tacticals = List.from(state.tacticals);
      tacticals.removeWhere((element) => element.id == r.id);

      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          tacticals: tacticals,
          filteredTacticals: tacticals,
        ),
      );
    });
  }

  Future<void> getById(ByIdParams params) async {
    emitLoading();
    final res = await _tacticalRepo.getById(params);

    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
        ),
      );
    });
  }

  Future<void> getAll(PaginationParams params, int clubId) async {
    emitLoading();
    final res = await _tacticalRepo.getAll(params, clubId);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          tacticals: r,
          filteredTacticals: r,
        ),
      );
    });
  }
}
