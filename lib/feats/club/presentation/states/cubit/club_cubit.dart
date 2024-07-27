import 'dart:io';

import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_cubit.freezed.dart';
part 'club_state.dart';

class ClubCubit extends Cubit<ClubState> {
  final ClubRepo _clubRepo;
  final UserRepo _userRepo;
  final ImagePickerClient _imagePickerClient;

  ClubCubit(
    this._clubRepo,
    this._userRepo,
    this._imagePickerClient,
  ) : super(ClubState());

  void emitCaller(ClubState state) {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state,
    );
  }

  Future<void> init() async {
    await fetchLocalUser();
    await getAll();
  }

  Future<void> fetchLocalUser() async {
    final res = await _userRepo.getMe();
    return res.fold(
      (l) => null,
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(user: UserModel.fromEntity(r)),
        );
      },
    );
  }

  Future<void> getAll() async {
    final res = await _clubRepo.getAll(const PaginationParams());

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            // state: BaseState.success,
            clubs: r,
            filteredClubs: r,
          ),
        );
      },
    );
  }

  Future<void> create(CreateClubParams params) async {
    final res = await _clubRepo.create(params);

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        final List<ClubModel> clubs = List.from(state.clubs);
        clubs.add(r);

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            clubs: clubs,
          ),
        );
      },
    );
  }

  Future<void> update(UpdateClubParams params) async {
    final res = await _clubRepo.update(params);

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        final List<ClubModel> clubs = List.from(state.clubs);
        final index = clubs.indexWhere((element) => element.id == r.id);
        clubs[index] = r;

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            // state: BaseState.success,
            clubs: clubs,
          ),
        );
      },
    );
  }

  Future<void> delete(ByIdParams params) async {
    final res = await _clubRepo.delete(params);

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        final List<ClubModel> clubs = List.from(state.clubs);
        clubs.removeWhere((element) => element.id == r.id);

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            // state: BaseState.success,
            clubs: clubs,
          ),
        );
      },
    );
  }

  Future<void> getById(ByIdParams params) async {
    final res = await _clubRepo.getById(params);

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        final List<ClubModel> clubs = List.from(state.clubs);
        final index = clubs.indexWhere((element) => element.id == r.id);
        clubs[index] = r;
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            // state: BaseState.success,
            clubs: clubs,
          ),
        );
      },
    );
  }

  Future<void> getMembers(PaginationParams params, int clubId) async {
    final res = await _clubRepo.getMembers(params, clubId);

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            // state: BaseState.success,
            members: r,
            filteredMembers: r,
          ),
        );
      },
    );
  }

  Future<void> kick(int clubId, int userId) async {
    final res = await _clubRepo.kick(clubId, userId);

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        log.e(r);
        final List<UserModel> members = List.from(state.members);
        members.removeWhere((element) => element.id == r.id);

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            members: members,
          ),
        );
      },
    );
  }

  Future<void> addUser(int clubId, int userId) async {
    final res = await _clubRepo.addUser(clubId, userId);

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
          ),
        );
      },
    );
  }

  void search(String query) {
    final filteredClubs = state.clubs.where((element) {
      return element.name.toLowerCase().contains(query.toLowerCase());
    }).toList();

    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        filteredClubs: filteredClubs,
      ),
    );
  }

  void pickImageFromGallery() async {
    final res = await _imagePickerClient.getImageFromGallery();

    res.fold(
      (l) {},
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            image: File(r.path),
          ),
        );
      },
    );
  }

  void pickImageFromCamera() async {
    final res = await _imagePickerClient.getImageFromCamera();

    res.fold(
      (l) {},
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            image: File(r.path),
          ),
        );
      },
    );
  }
}
