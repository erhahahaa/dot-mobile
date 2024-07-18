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

  void init() {}
}
