import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_cubit.freezed.dart';
part 'club_state.dart';

class ClubCubit extends Cubit<ClubState> {
  final ClubRepo _clubRepo;
  ClubCubit(
    this._clubRepo,
  ) : super(const ClubState());

  Future<void> create(CreateClubParams createClubParams) async {
    final res = await _clubRepo.create(createClubParams);

    res.fold(
      (l) => emit(
        state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) => emit(
        state.copyWith(
          state: BaseState.success,
        ),
      ),
    );
  }
}
