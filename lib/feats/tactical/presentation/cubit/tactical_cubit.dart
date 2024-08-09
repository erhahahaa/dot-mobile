import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'tactical_cubit.freezed.dart';
part 'tactical_state.dart';

class TacticalCubit extends Cubit<TacticalState> {
  WebSocketChannel? socketChannel;
  StreamSubscription? tacticalSocket;
  final TacticalRepo _tacticalRepo;
  final UserRepo _userRepo;

  final List<PlayerModel> initialPositions = [];

  TacticalCubit(
    this._tacticalRepo,
    this._userRepo,
  ) : super(const TacticalState());

  void clear() {
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: const TacticalState(),
    );
  }

  void emitLoading() => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(state: BaseState.loading),
      );

  void emitIsConnected(bool status) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(isConnected: status),
      );

  void emitStrategy(TacticalStrategicModel? strategy) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(strategic: strategy ?? const TacticalStrategicModel()),
      );

  void initInitialPositions({
    List<PlayerModel>? players,
  }) {
    initialPositions.clear();
    initialPositions.addAll(players ?? []);
  }

  Future<void> init({
    int? clubId,
  }) async {
    await getUser();
    await getAll(clubId: clubId);
  }

  void listenWebSocket(TacticalModel tactical) {
    initialPositions.clear();
    initialPositions.addAll(tactical.strategic?.players ?? []);
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(audiences: [], isConnected: false),
    );
    try {
      socketChannel ??= IOWebSocketChannel.connect(
        Uri.parse('${ListAPI.LIVE_TACTICAL}/${tactical.id}'),
        headers: {
          'Authorization': 'Bearer ${state.user.token}',
        },
      );
      emitIsConnected(true);
      tacticalSocket ??= socketChannel?.stream.listen(
        (message) {
          final Map<String, dynamic> json = jsonDecode(message);
          final data = StrategyWSModel.fromJson(json);
          if (data.event == WebSocketEvent.join) {
            final audiences = List<UserModel>.from(state.audiences);
            audiences.add(data.params.user);
            safeEmit(
              isClosed: isClosed,
              emit: emit,
              state: state.copyWith(audiences: audiences),
            );
          }
          if (data.event == WebSocketEvent.leave) {
            final audiences = List<UserModel>.from(state.audiences);
            audiences
                .removeWhere((element) => element.id == data.params.user.id);
            safeEmit(
              isClosed: isClosed,
              emit: emit,
              state: state.copyWith(audiences: audiences),
            );
          }

          if (data.event == WebSocketEvent.message) {
            final innerData = data.data;
            if (innerData != null) {
              safeEmit(
                isClosed: isClosed,
                emit: emit,
                state: state.copyWith(strategic: innerData),
              );
            }
          }
          if (data.event == WebSocketEvent.destroy) {
            closeWebSocket();
          }
        },
        onDone: () {
          closeWebSocket();
          Future.delayed(Duration(seconds: 1), () {
            listenWebSocket(tactical);
          });
        },
        onError: (error) {
          closeWebSocket();
          Future.delayed(Duration(seconds: 1), () {
            listenWebSocket(tactical);
          });
        },
      );
    } catch (e) {
      closeWebSocket();
      Future.delayed(Duration(seconds: 1), () {
        listenWebSocket(tactical);
      });
    }
  }

  Future<void> closeWebSocket() async {
    await tacticalSocket?.cancel();
    await socketChannel?.sink.close();
    emitIsConnected(false);
  }

  Future<void> sendWebSocket(String message) async {
    socketChannel?.sink.add(message);
  }

  void addArrow(ArrowModel arrow) {
    final List<ArrowModel> arrows = List.from(state.strategic.arrows);
    arrows.add(arrow);
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(
        strategic: state.strategic.copyWith(arrows: arrows),
      ),
    );
  }

  List<PlayerModel> getInitialPosition() {
    return initialPositions;
  }

  Future<void> getUser() async {
    final res = await _userRepo.getMe();
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          user: UserModel.fromEntity(r),
        ),
      );
    });
  }

  Future<void> create(CreateTacticalParams params) async {
    emitLoading();
    final res = await _tacticalRepo.create(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      final List<TacticalModel> tacticals = List.from(state.tacticals);
      tacticals.add(r);

      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          createdTactical: r,
          tacticals: tacticals,
          filteredTacticals: tacticals,
        ),
      );
    });
  }

  Future<void> update(UpdateTacticalParams params) async {
    emitLoading();

    final res = await _tacticalRepo.update(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      final List<TacticalModel> tacticals = List.from(state.tacticals);
      final index = tacticals.indexWhere((element) => element.id == r.id);
      tacticals[index] = r;

      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          createdTactical: r,
          tacticals: tacticals,
          filteredTacticals: tacticals,
        ),
      );
    });
  }

  Future<void> delete(ByIdParams params) async {
    final res = await _tacticalRepo.delete(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      final List<TacticalModel> tacticals = List.from(state.tacticals);
      tacticals.removeWhere((element) => element.id == r.id);

      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          tacticals: tacticals,
          filteredTacticals: tacticals,
        ),
      );
    });
  }

  Future<void> getById(ByIdParams params) async {
    emitLoading();
    final res = await _tacticalRepo.getById(params);

    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
        ),
      );
    });
  }

  Future<void> getAll({
    PaginationParams? params,
    int? clubId,
  }) async {
    emitLoading();
    final res =
        await _tacticalRepo.getAll(params ?? const PaginationParams(), clubId);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
          tacticals: r,
          filteredTacticals: r,
        ),
      );
    });
  }

  void search(String query) {
    final List<TacticalModel> filteredTacticals = state.tacticals
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    safeEmit(
      isClosed: isClosed,
      emit: emit,
      state: state.copyWith(filteredTacticals: filteredTacticals),
    );
  }
}
