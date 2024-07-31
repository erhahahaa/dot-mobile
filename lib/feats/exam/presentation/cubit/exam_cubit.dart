import 'dart:io';

import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_cubit.freezed.dart';
part 'exam_state.dart';

class ExamCubit extends Cubit<ExamState> {
  final ExamRepo _examRepo;
  final ImagePickerClient _imagePickerClient;
  ExamCubit(
    this._examRepo,
    this._imagePickerClient,
  ) : super(const ExamState());

  void clear() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: const ExamState(),
    );
  }

  void emitLoading() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.loading),
      );

  void emitInitial() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.initial,
        ),
      );

  Future<void> init({
    required int clubId,
  }) async {
    await getAll(const PaginationParams(), clubId);
  }

  Future<void> create(CreateExamParams params) async {
    emitLoading();
    final res = await _examRepo.create(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );
    }, (r) {
      final List<ExamModel> exams = List.from(state.exams);
      exams.add(r);
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          exams: exams,
          filteredExams: exams,
          createdExam: r,
        ),
      );
    });
  }

  Future<void> update(UpdateExamParams params) async {
    emitLoading();
    final res = await _examRepo.update(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );
    }, (r) {
      final List<ExamModel> exams = List.from(state.exams);
      final index = exams.indexWhere((element) => element.id == params.id);
      exams[index] = r;

      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          exams: exams,
          filteredExams: exams,
          createdExam: r,
        ),
      );
    });
  }

  Future<void> delete(ByIdParams params) async {
    emitLoading();
    final res = await _examRepo.delete(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );
    }, (r) {
      final List<ExamModel> exams = List.from(state.exams);
      exams.removeWhere((element) => element.id == r.id);

      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          exams: exams,
          filteredExams: exams,
        ),
      );
    });
  }

  Future<void> getById(ByIdParams params) async {
    emitLoading();
    final res = await _examRepo.getById(params);
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
    final res = await _examRepo.getAll(params, clubId);
    res.fold(
      (l) => emitInitial(),
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            exams: r,
            filteredExams: r,
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
