import 'dart:io';

import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/helpers/helpers.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_cubit.freezed.dart';
part 'media_state.dart';

class MediaCubit extends Cubit<MediaState> {
  final MediaRepo _mediaRepo;
  final FilePickerClient _filePickerClient;

  MediaCubit(
    this._mediaRepo,
    this._filePickerClient,
  ) : super(const MediaState());

  void clear() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: const MediaState(),
    );
  }

  void emitLoading() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.loading),
      );

  Future<void> init({required clubId}) async {
    emitLoading();
    for (final parent in MediaParent.values) {
      await getAll(parent: parent, clubId: clubId);
    }
  }

  Future<void> getAll({
    required MediaParent parent,
    required int clubId,
  }) async {
    final res = await _mediaRepo.getAll(
      const PaginationParams(),
      parent,
      clubId,
    );

    res.fold(
      (l) => null,
      (r) => _updateMediaState(parent, r),
    );
  }

  Future<void> download(MediaModel media) async {
    final res = await _mediaRepo.download(media);

    res.fold(
      (l) => _emitFailureState(message: "Download failed"),
      (r) => _emitSuccessState(),
    );
  }

  Future<FilePickerResult?> _pick() async {
    return _filePickerClient.picker.pickFiles(
      dialogTitle: 'Pick file',
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4', 'pdf'],
    );
  }

  Future<void> upload(MediaParent parent, int clubId) async {
    final file = await _pick();

    if (file == null || file.files.isEmpty || file.files.last.path == null) {
      _emitFailureState(message: 'No file selected');
      return;
    }

    final lastFile = file.files.last;
    emitLoading();
    final uploadResult = await _mediaRepo.upload(
      UpsertMediaParams(
        id: 0,
        file: File(lastFile.path!),
        parent: parent,
        clubId: clubId,
      ),
    );

    uploadResult.fold(
      (l) => _emitFailureState(message: 'Upload failed'),
      (r) => _addMediaToParentList(parent, r),
    );
  }

  void _emitFailureState({required String message}) {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        state: BaseState.failure,
        failure: StorageFailure(message: message),
      ),
    );
  }

  void _emitSuccessState() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state,
    );
  }

  void _updateMediaState(MediaParent parent, List<MediaModel> mediaList) {
    switch (parent) {
      case MediaParent.club:
        _updateStateWithMediaList(clubMedias: mediaList);
        break;
      case MediaParent.program:
        _updateStateWithMediaList(programMedias: mediaList);
        break;
      case MediaParent.exercise:
        _updateStateWithMediaList(exerciseMedias: mediaList);
        break;
      case MediaParent.exam:
        _updateStateWithMediaList(examMedias: mediaList);
        break;
      case MediaParent.question:
        _updateStateWithMediaList(questionMedias: mediaList);
        break;
      case MediaParent.user:
        return;
    }
  }

  void _updateStateWithMediaList({
    List<MediaModel>? clubMedias,
    List<MediaModel>? programMedias,
    List<MediaModel>? exerciseMedias,
    List<MediaModel>? examMedias,
    List<MediaModel>? questionMedias,
  }) {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        clubMedias: clubMedias ?? state.clubMedias,
        programMedias: programMedias ?? state.programMedias,
        exerciseMedias: exerciseMedias ?? state.exerciseMedias,
        examMedias: examMedias ?? state.examMedias,
        questionMedias: questionMedias ?? state.questionMedias,
        state: BaseState.success,
      ),
    );
  }

  void _addMediaToParentList(MediaParent parent, MediaModel media) {
    switch (parent) {
      case MediaParent.club:
        final List<MediaModel> medias = List.from(state.clubMedias);
        medias.add(media);
        _updateStateWithMediaList(clubMedias: medias);
        break;
      case MediaParent.program:
        final List<MediaModel> medias = List.from(state.programMedias);
        medias.add(media);
        _updateStateWithMediaList(programMedias: medias);
        break;
      case MediaParent.exercise:
        final List<MediaModel> medias = List.from(state.exerciseMedias);
        medias.add(media);
        _updateStateWithMediaList(exerciseMedias: medias);
        break;
      case MediaParent.exam:
        final List<MediaModel> medias = List.from(state.examMedias);
        medias.add(media);
        _updateStateWithMediaList(examMedias: medias);
        break;
      case MediaParent.question:
        final List<MediaModel> medias = List.from(state.questionMedias);
        medias.add(media);
        _updateStateWithMediaList(questionMedias: medias);
        break;
      case MediaParent.user:
        return;
    }
  }
}
