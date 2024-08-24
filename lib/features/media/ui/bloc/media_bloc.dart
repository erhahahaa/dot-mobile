import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'media_bloc.freezed.dart';
part 'media_event.dart';
part 'media_state.dart';

@lazySingleton
class MediaBloc extends Bloc<MediaEvent, MediaState> {
  MediaBloc() : super(const _Initial()) {
    on<MediaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
