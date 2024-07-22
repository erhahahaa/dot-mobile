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

  MediaCubit(this._mediaRepo, this._filePickerClient)
      : super(const MediaState());

  Future<void> init() async {
    for (final parent in MediaParent.values) {
      await getAll(parent: parent);
    }
  }

  Future<void> getAll({required MediaParent parent}) async {
    final res = await _mediaRepo.getAll(const PaginationParams(), parent);

    res.fold(
      (l) => _emitFailureState(message: "Failed to fetch asset"),
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

  Future<void> upload(MediaParent parent) async {
    final file = await _pick();

    if (file == null || file.files.isEmpty || file.files.last.path == null) {
      _emitFailureState(message: 'No file selected');
      return;
    }

    final lastFile = file.files.last;
    final uploadResult = await _mediaRepo.upload(
      UpsertMediaParams(
        id: 0,
        file: File(lastFile.path!),
        parent: parent,
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
        _updateStateWithMediaList(
          clubMedias: List.from(state.clubMedias)..add(media),
        );
        break;
      case MediaParent.program:
        _updateStateWithMediaList(
          programMedias: List.from(state.programMedias)..add(media),
        );
        break;
      case MediaParent.exercise:
        _updateStateWithMediaList(
          exerciseMedias: List.from(state.exerciseMedias)..add(media),
        );
        break;
      case MediaParent.exam:
        _updateStateWithMediaList(
          examMedias: List.from(state.examMedias)..add(media),
        );
        break;
      case MediaParent.question:
        _updateStateWithMediaList(
          questionMedias: List.from(state.questionMedias)..add(media),
        );
        break;
      case MediaParent.user:
        return;
    }
  }
}
