import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_cubit.freezed.dart';
part 'exam_state.dart';

class ExamCubit extends Cubit<ExamState> {
  final ExamRepo _examRepo;
  ExamCubit(
    this._examRepo,
  ) : super(const ExamState());
}
