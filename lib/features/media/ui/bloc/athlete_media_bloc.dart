import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'athlete_media_bloc.freezed.dart';
part 'athlete_media_event.dart';
part 'athlete_media_state.dart';

@lazySingleton
class AthleteMediaBloc extends Bloc<AthleteMediaEvent, AthleteMediaState> {
  AthleteMediaBloc() : super(_Initial()) {
    on<AthleteMediaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
