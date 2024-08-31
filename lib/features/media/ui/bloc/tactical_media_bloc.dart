import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TacticalMediaBlocRead extends BlocRead<MediaModel> {
  static const MediaParent parent = MediaParent.tactical;

  final GetAllMediaUsecase _getAllMediaUsecase;
  final DownloadMediaUsecase _downloadMediaUsecase;

  TacticalMediaBlocRead(
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
        success.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));
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
    state.whenOrNull(
      success: (medias, filteredMedias, _) {
        emit(BlocStateReadSuccess(
          items: medias,
          filteredItems: filteredMedias,
          selectedItem: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocEventReadFilter event,
    Emitter<BlocStateRead<MediaModel>> emit,
  ) {
    state.whenOrNull(
      success: (medias, _, __) {
        final filteredMedias = medias.where((media) {
          return media.name.toLowerCase().contains(event.query.toLowerCase());
        }).toList();

        emit(BlocStateReadSuccess(
          items: medias,
          filteredItems: filteredMedias,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocEventReadAppend<MediaModel> event,
    Emitter<BlocStateRead<MediaModel>> emit,
  ) {
    state.whenOrNull(
      success: (medias, _, __) {
        final find =
            medias.where((media) => media.id == event.item.id).toList();

        if (find.isNotEmpty) {
          final items = medias.map((media) {
            if (media.id == event.item.id) {
              return event.item;
            }
            return media;
          }).toList();

          items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));
          emit(BlocStateReadSuccess(
            items: items,
            filteredItems: items,
          ));
          return;
        }

        final items = [...medias, event.item];
        items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));
        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
        ));
      },
    );
  }

  @override
  void onRemove(
    BlocEventReadRemove<MediaModel> event,
    Emitter<BlocStateRead<MediaModel>> emit,
  ) {
    state.whenOrNull(
      success: (medias, _, __) {
        final items = medias.where((media) => media.id != event.id).toList();
        items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

        emit(BlocStateReadSuccess(
          items: items,
          filteredItems: items,
        ));
      },
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
class TacticalMediaBlocWrite extends BlocWrite<MediaModel> {
  static const MediaParent parent = MediaParent.tactical;

  final UploadMediaUsecase _uploadMediaUsecase;
  TacticalMediaBlocWrite(
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
