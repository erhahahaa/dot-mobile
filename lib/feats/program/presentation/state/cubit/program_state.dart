part of 'program_cubit.dart';

@freezed
class ProgramState with _$ProgramState {
  const factory ProgramState({
    @Default(BaseState.initial) BaseState state,
  }) = _ProgramState;
}
