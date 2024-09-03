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
  ) : super(const BlocReadStateInitial()) {
    on<BlocReadEventGet<MediaModel>>(onGet);
    on<BlocReadEventSelect<MediaModel>>(onSelect);
    on<BlocReadEventFilter<MediaModel>>(onFilter);
    on<BlocReadEventAppend<MediaModel>>(onAppend);
    on<BlocReadEventRemove<MediaModel>>(onRemove);
    on<BlocReadEventGetOne<MediaModel>>(onGetOne);
  }

  @override
  void onGet(
    BlocReadEventGet event,
    Emitter<BlocReadState<MediaModel>> emit,
  ) async {
    final clubId = event.id;
    final type =
        event.query != null ? MediaType.fromString(event.query!) : null;
    if (clubId == null) {
      return emit(const BlocReadStateFailure('Club ID is required'));
    }
    emit(const BlocReadStateLoading());

    final res = await _getAllMediaUsecase.call(GetAllMediaParams(
      parent: parent,
      clubId: clubId,
      type: type,
    ));

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
    BlocReadEventSelect<MediaModel> event,
    Emitter<BlocReadState<MediaModel>> emit,
  ) {
    state.whenOrNull(
      success: (medias, filteredMedias, _) {
        emit(BlocReadStateSuccess(
          items: medias,
          filteredItems: filteredMedias,
          selected: event.item,
        ));
      },
    );
  }

  @override
  void onFilter(
    BlocReadEventFilter event,
    Emitter<BlocReadState<MediaModel>> emit,
  ) {
    state.whenOrNull(
      success: (medias, _, selected) {
        final filteredMedias = medias.where((media) {
          return media.name.toLowerCase().contains(event.query.toLowerCase());
        }).toList();

        emit(BlocReadStateSuccess(
          items: medias,
          filteredItems: filteredMedias,
        ));
      },
    );
  }

  @override
  void onAppend(
    BlocReadEventAppend<MediaModel> event,
    Emitter<BlocReadState<MediaModel>> emit,
  ) {
    state.whenOrNull(
      success: (medias, _, selected) {
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
          emit(BlocReadStateSuccess(
            items: items,
            filteredItems: items,
          ));
          return;
        }

        final items = [...medias, event.item];
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
    BlocReadEventRemove<MediaModel> event,
    Emitter<BlocReadState<MediaModel>> emit,
  ) {
    state.whenOrNull(
      success: (medias, _, selected) {
        final items = medias.where((media) => media.id != event.id).toList();
        items.sort((a, b) => b.updatedAt!.compareTo(a.updatedAt!));

        emit(BlocReadStateSuccess(
          items: items,
          filteredItems: items,
          selected: selected,
        ));
      },
    );
  }

  void onGetOne(
    BlocReadEventGetOne<MediaModel> event,
    Emitter<BlocReadState<MediaModel>> emit,
  ) async {
    final prev = state.maybeWhen(
      success: (medias, _, __) => medias,
      orElse: () => <MediaModel>[],
    );
    final res = await _downloadMediaUsecase.call(
      DownloadMediaParams(
        media: event.params,
        onReceiveProgress: (count, total) {
          emit(BlocReadStateLoading(count: count, total: total));
        },
      ),
    );

    res.fold(
      (l) => emit(BlocReadStateFailure(l.message)),
      (r) {
        emit(BlocReadStateSuccess(
          items: prev,
          filteredItems: prev,
          selected: event.params,
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
  ) : super(const BlocWriteStateInitial()) {
    on<BlocWriteEventCreate>(onCreate);
    on<BlocWriteEventUpdate>(onUpdate);
    on<BlocWriteEventDelete>(onDelete);
  }

  @override
  void onCreate(
    BlocWriteEventCreate event,
    Emitter<BlocWriteState<MediaModel>> emit,
  ) async {
    final res = await _uploadMediaUsecase.call(
      UploadMediaParams(
        id: 0,
        file: event.params['file'],
        parent: parent,
        clubId: event.params['clubId'],
        onSendProgress: (int? count, int? total) {
          emit(BlocWriteStateLoading(count: count, total: total));
        },
      ),
    );

    res.fold(
      (l) => emit(BlocWriteStateFailure(l.message)),
      (r) => emit(BlocWriteStateSuccess(r)),
    );
  }

  @override
  void onUpdate(
    BlocWriteEventUpdate event,
    Emitter<BlocWriteState<MediaModel>> emit,
  ) {}

  @override
  void onDelete(
    BlocWriteEventDelete event,
    Emitter<BlocWriteState<MediaModel>> emit,
  ) {}
}
