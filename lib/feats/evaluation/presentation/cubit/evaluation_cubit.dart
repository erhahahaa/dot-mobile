import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_cubit.freezed.dart';
part 'evaluation_state.dart';

class EvaluationCubit extends Cubit<EvaluationState> {
  EvaluationCubit() : super(EvaluationState());

  void clear() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: EvaluationState(),
      );

  Future<void> init({int? clubId}) async {
    if (clubId == null) return;
  }
}
