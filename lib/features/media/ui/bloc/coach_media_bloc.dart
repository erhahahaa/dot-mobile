import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coach_media_bloc.freezed.dart';
part 'coach_media_event.dart';
part 'coach_media_state.dart';

@lazySingleton
class CoachMediaBloc extends Bloc<CoachMediaEvent, CoachMediaState> {
  CoachMediaBloc() : super(_Initial()) {
    on<CoachMediaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
