import 'dart:async';
import 'dart:convert';

import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/helpers/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'strategy_cubit.freezed.dart';
part 'strategy_state.dart';

@lazySingleton
class StrategyCubit extends Cubit<StrategyState> {
  WebSocketChannel? _socketChannel;
  StreamSubscription? _tacticalSocket;
  final List<PlayerModel> _initialPositions = [];

  StrategyCubit() : super(const StrategyState.initial());

  void emitStrategy(TacticalStrategicModel? strategy) {
    _initialPositions.clear();
    _initialPositions.addAll(strategy?.players ?? []);

    emit(
      StrategyState.success(
          strategy: strategy ?? const TacticalStrategicModel()),
    );
  }

  Future<void> listenWebSocket(TacticalModel tactical, String bearer) async {
    _initialPositions.clear();
    _initialPositions.addAll(tactical.strategic?.players ?? []);
    emit(const StrategyState.loading());
    try {
      _socketChannel = IOWebSocketChannel.connect(
          Uri.parse('${ListAPI.LIVE_TACTICAL}/${tactical.id}'),
          headers: {
            'Authorization': 'Bearer $bearer',
          });

      emit(const StrategyState.success(isConnected: true));

      _tacticalSocket = _socketChannel?.stream.listen(
        (message) {
          final Map<String, dynamic> json = jsonDecode(message);
          final data = StrategyWSModel.fromJson(json);

          if (data.event == WebSocketEvent.join) {
            final audiences = List<UserModel>.from(state.whenOrNull(
                  success: (audiences, __, ___) => audiences,
                ) ??
                []);
            audiences.add(data.params.user);
            emit(
              StrategyState.success(
                audiences: audiences,
                isConnected: true,
              ),
            );
          }

          if (data.event == WebSocketEvent.leave) {
            final audiences = List<UserModel>.from(state.whenOrNull(
                  success: (audiences, __, ___) => audiences,
                ) ??
                []);
            audiences
                .removeWhere((element) => element.id == data.params.user.id);

            emit(
              StrategyState.success(
                audiences: audiences,
                isConnected: true,
              ),
            );
          }

          if (data.event == WebSocketEvent.message) {
            final audiences = state.whenOrNull(
              success: (audiences, __, ___) => audiences,
            );
            emit(StrategyState.success(
              audiences: audiences ?? [],
              isConnected: true,
              strategy: data.data ?? const TacticalStrategicModel(),
            ));
          }
          if (data.event == WebSocketEvent.destroy) {
            closeWebSocket();
          }
        },
        onDone: () {
          closeWebSocket();
          Future.delayed(const Duration(seconds: 1), () {
            listenWebSocket(tactical, bearer);
          });
        },
        onError: (error) {
          closeWebSocket();
          Future.delayed(const Duration(seconds: 1), () {
            listenWebSocket(tactical, bearer);
          });
        },
      );
      bool isConnected =
          !(_socketChannel?.closeCode != null || _socketChannel?.sink == null);
      final audiences = state.whenOrNull(
        success: (audiences, __, ___) => audiences,
      );
      final strategy = state.whenOrNull(
        success: (_, strategy, ___) => strategy,
      );

      emit(StrategyState.success(
        audiences: audiences ?? [],
        strategy: strategy ?? const TacticalStrategicModel(),
        isConnected: isConnected,
      ));
    } catch (e) {
      closeWebSocket();
      Future.delayed(const Duration(seconds: 1), () {
        listenWebSocket(tactical, bearer);
      });
    }
  }

  Future<void> closeWebSocket() async {
    try {
      await _tacticalSocket?.cancel();
      await _socketChannel?.sink.close();
      _socketChannel = null;
      _tacticalSocket = null;
      emit(const StrategyState.success(isConnected: false));
    } catch (e) {
      Log.error('Error closeWebSocket: $e');
    }
  }

  Future<void> sendWebSocket(String message) async {
    try {
      _socketChannel?.sink.add(message);
    } catch (e) {
      closeWebSocket();
    }
  }

  void addArrow(ArrowModel arrow) {
    final strategy = state.whenOrNull(
      success: (_, strategy, __) => strategy,
    );
    final isConnected = state.whenOrNull(
      success: (_, __, isConnected) => isConnected,
    );
    final List<ArrowModel> arrows = List.from(strategy?.arrows ?? []);
    arrows.add(arrow);

    emit(StrategyState.success(
      isConnected: isConnected ?? false,
      strategy: strategy?.copyWith(arrows: arrows) ?? const TacticalStrategicModel(),
    ));
  }

  getInitialPosition() {
    return _initialPositions;
  }
}
