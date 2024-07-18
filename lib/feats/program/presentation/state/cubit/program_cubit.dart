import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_cubit.freezed.dart';
part 'program_state.dart';

class ProgramCubit extends Cubit<ProgramState> {
  final ProgramRepo _programRepo;
  ProgramCubit(
    this._programRepo,
  ) : super(const ProgramState());

  void init() {}
}
