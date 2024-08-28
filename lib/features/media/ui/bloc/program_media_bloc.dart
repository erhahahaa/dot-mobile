import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProgramMediaBlocRead extends BlocRead<MediaModel> {
  static const MediaParent parent = MediaParent.program;

  final GetAllMediaUsecase _getAllMediaUsecase;
  final DownloadMediaUsecase _downloadMediaUsecase;

  ProgramMediaBlocRead(
    this._getAllMediaUsecase,
    this._downloadMediaUsecase,
  ) : super(const BlocStateReadInitial()) {
    on<BlocEventReadClear<MediaModel>>(onClear);
    on<BlocEventReadGet<MediaModel>>(onGet);
    on<BlocEventReadSelect<MediaModel>>(onSelect);
    on<BlocEventReadFilter<MediaModel>>(onFilter);
    on<BlocEventReadAppend<MediaModel>>(onAppend);
    on<BlocEventReadRemove<MediaModel>>(onRemove);
    on<BlocEventReadGetOne<MediaModel>>(onGetOne);
  }

  @override
  void onGet(
    BlocEventReadGet event,
    Emitter<BlocStateRead<MediaModel>> emit,
  ) async {
    final clubId = event.id;
    final type =
        event.query != null ? MediaType.fromString(event.query!) : null;
    if (clubId == null) {
      return emit(const BlocStateReadFailure('Club ID is required'));
    }
    emit(const BlocStateReadLoading());

    final res = await _getAllMediaUsecase.call(GetAllMediaParams(
      parent: parent,
      clubId: clubId,
      type: type,
    ));

    res.fold(
      (failure) => emit(BlocStateReadFailure(failure.message)),
      (success) {
        success.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
        emit(BlocStateReadSuccess(
          items: success,
          filteredItems: success,
        ));
      },
    );
  }

  @override
  void onSelect(
    BlocEventReadSelect<MediaModel> event,
    Emitter<BlocStateRead<MediaModel>> emit,
  ) {
    state.maybeWhen(
      success: (medias, filteredMedias, _) {
        emit(BlocStateReadSuccess(
          items: medias,
          filteredItems: filteredMedias,
          selectedItem: event.item,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<MediaModel>> emit,
  ) {
    state.maybeWhen(
      success: (medias, _, __) {
        final filteredMedias = medias.where((media) {
          return media.name.toLowerCase().contains(event.query.toLowerCase());
        }).toList();

        emit(BlocStateReadSuccess(
          items: medias,
          filteredItems: filteredMedias,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onAppend(
    BlocEventReadAppend<MediaModel> event,
    Emitter<BlocStateRead<MediaModel>> emit,
  ) {
    state.maybeWhen(
      success: (medias, _, __) {
        final items = [...medias, event.item];
        items.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
        ));
      },
      orElse: () => null,
    );
  }

  @override
  void onRemove(
    BlocEventReadRemove<MediaModel> event,
    Emitter<BlocStateRead<MediaModel>> emit,
  ) {
    state.maybeWhen(
      success: (medias, _, __) {
        final items = medias.where((media) => media.id != event.id).toList();
        items.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));

        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
        ));
      },
      orElse: () => null,
    );
  }

  void onGetOne(
    BlocEventReadGetOne<MediaModel> event,
    Emitter<BlocStateRead<MediaModel>> emit,
  ) async {
    final prev = state.maybeWhen(
      success: (medias, _, __) => medias,
      orElse: () => <MediaModel>[],
    );
    final res = await _downloadMediaUsecase.call(
      DownloadMediaParams(
        media: event.params,
        onReceiveProgress: (count, total) {
          emit(BlocStateReadLoading(count: count, total: total));
        },
      ),
    );

    res.fold(
      (l) => emit(BlocStateReadFailure(l.message)),
      (r) {
        emit(BlocStateReadSuccess(
          items: prev,
          filteredItems: prev,
          selectedItem: event.params,
        ));
      },
    );
  }
}

@lazySingleton
class ProgramMediaBlocWrite extends BlocWrite<MediaModel> {
  static const MediaParent parent = MediaParent.program;

  final UploadMediaUsecase _uploadMediaUsecase;
  ProgramMediaBlocWrite(
    this._uploadMediaUsecase,
  ) : super(const BlocStateWriteInitial()) {
    on<BlocEventWriteCreate>(onCreate);
    on<BlocEventWriteUpdate>(onUpdate);
    on<BlocEventWriteDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocEventWriteCreate event,
    Emitter<BlocStateWrite<MediaModel>> emit,
  ) async {
    final res = await _uploadMediaUsecase.call(
      UploadMediaParams(
        id: 0,
        file: event.params['file'],
        parent: parent,
        clubId: event.params['clubId'],
        onSendProgress: (int? count, int? total) {
          emit(BlocStateWriteLoading(count: count, total: total));
        },
      ),
    );

    res.fold(
      (l) => emit(BlocStateWriteFailure(l.message)),
      (r) => emit(BlocStateWriteSuccess(r)),
    );
  }

  @override
  void onUpdate(
    BlocEventWriteUpdate event,
    Emitter<BlocStateWrite<MediaModel>> emit,
  ) {}

  @override
  void onDelete(
    BlocEventWriteDelete event,
    Emitter<BlocStateWrite<MediaModel>> emit,
  ) {}
}
