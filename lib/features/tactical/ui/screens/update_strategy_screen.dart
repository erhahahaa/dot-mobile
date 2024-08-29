import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class UpdateStrategyScreen extends StatefulWidget {
  const UpdateStrategyScreen({super.key});

  @override
  State<UpdateStrategyScreen> createState() => _UpdateStrategyScreenState();
}

class _UpdateStrategyScreenState extends State<UpdateStrategyScreen> {
  TacticalModel? _tactical;
  UserModel? _user;
  late GlobalKey<ScaffoldState> _scaffoldKey;
  late TransformationController _transformationController;

  late TacticalStrategicModel _strategy;

  Offset? _arrowStart;
  Offset? _arrowEnd;
  bool _isDrawingMode = false;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = GlobalKey<ScaffoldState>();
    _transformationController = TransformationController();

    final tacticalBloc = context.read<TacticalBlocRead>();
    _tactical = tacticalBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );
    _strategy = _tactical?.strategic ?? const TacticalStrategicModel();

    context.read<StrategyCubit>().emitStrategy(_strategy);

    final userBloc = context.read<UserBloc>();
    _user = userBloc.state.whenOrNull(success: (user, __) => user);

    final tactical = _tactical;
    final user = _user;
    if (tactical != null && tactical.isLive == true && user != null) {
      final bearer = user.token;
      if (bearer == null) return;
      context.read<StrategyCubit>().listenWebSocket(tactical, bearer);
    }
  }

  @override
  void dispose() {
    _scaffoldKey.currentState?.dispose();
    _transformationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Parent(
      scaffoldKey: _scaffoldKey,
      appBar: _buildAppBar(),
      floatingActionButton: _buildFloatingActionButton(),
      endDrawer: (_tactical?.isLive ?? false)
          ? BlocBuilder<StrategyCubit, StrategyState>(
              builder: (context, state) {
                final audiences = state.maybeWhen(
                  success: (audiences, __, ___) => audiences,
                  orElse: () => <UserModel>[],
                );
                return TacticalDrawer(
                  tactical: _tactical ?? const TacticalModel(),
                  audiences: audiences,
                );
              },
            )
          : null,
      body: SafeArea(
        child: Column(
          children: [
            _buildBoard(context, screenSize),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Row _buildFooter(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 8.w),
        IconButton(
          onPressed: () {
            final initial = context.read<StrategyCubit>().getInitialPosition();
            setState(() {
              _strategy = _strategy.copyWith(players: initial);
            });
          },
          icon: const Icon(Icons.refresh),
        ),
        SizedBox(width: 8.w),
        IconButton(
          onPressed: () {
            setState(() {
              _isDrawingMode = !_isDrawingMode;
            });
          },
          icon: Icon(_isDrawingMode ? Icons.done : Icons.edit),
        ),
      ],
    );
  }

  InteractiveViewer _buildBoard(BuildContext context, Size screenSize) {
    final boardWidth = _tactical?.board.width ?? 0;
    final boardHeight = _tactical?.board.height ?? 0;
    return InteractiveViewer(
      transformationController: _transformationController,
      panEnabled: true,
      scaleEnabled: true,
      minScale: 0.5,
      maxScale: 2.0,
      child: GestureDetector(
        onPanStart: _isDrawingMode
            ? (details) {
                setState(() {
                  _arrowStart = details.localPosition;
                });
              }
            : null,
        onPanUpdate: _isDrawingMode
            ? (details) {
                setState(() {
                  _arrowEnd = details.localPosition;
                });
              }
            : null,
        onPanEnd: _isDrawingMode
            ? (details) {
                if (_arrowStart != null && _arrowEnd != null) {
                  final arrow = ArrowModel(
                    startX: _arrowStart!.dx,
                    startY: _arrowStart!.dy,
                    endX: _arrowEnd!.dx,
                    endY: _arrowEnd!.dy,
                  );
                  final arrows = List<ArrowModel>.from(_strategy.arrows);
                  arrows.add(arrow);
                  _strategy = _strategy.copyWith(arrows: arrows);
                  context.read<StrategyCubit>().addArrow(arrow);
                  setState(() {
                    _arrowStart = null;
                    _arrowEnd = null;
                  });
                }
              }
            : null,
        child: Stack(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.width * (boardWidth / boardHeight) + 60.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: _tactical?.media?.determineLoader(
                context,
                width: screenSize.width,
                fit: BoxFit.fill,
                useThumb: false,
              ),
            ),
            for (int i = 0; i < _strategy.players.length; i++)
              Positioned(
                left: _strategy.players[i].x,
                top: _strategy.players[i].y - 40 / 2,
                child: GestureDetector(
                  onPanStart: (details) {
                    final player = _strategy.players[i].copyWith(
                      isDragging: true,
                    );
                    final players = List<PlayerModel>.from(_strategy.players);
                    players[i] = player;
                    setState(() {
                      _strategy = _strategy.copyWith(players: players);
                    });
                  },
                  onPanUpdate: (details) {
                    final player = _strategy.players[i].copyWith(
                      x: _strategy.players[i].x + details.delta.dx,
                      y: _strategy.players[i].y + details.delta.dy,
                    );
                    final players = List<PlayerModel>.from(_strategy.players);
                    players[i] = player;
                    setState(() {
                      _strategy = _strategy.copyWith(players: players);
                    });

                    if (_tactical?.isLive == true) {
                      final channelName =
                          'club:${_tactical?.clubId}:tactical:${_tactical?.id}';

                      final data = StrategyWSModel(
                        event: WebSocketEvent.message,
                        params: StrategyWsParamModel(
                          clubId: _tactical?.clubId ?? 0,
                          channel: channelName,
                          user: _user ?? const UserModel(),
                        ),
                        data: _strategy,
                      ).toJson();
                      context
                          .read<StrategyCubit>()
                          .sendWebSocket(jsonEncode(data));
                    }
                  },
                  onPanEnd: (details) {
                    final player = _strategy.players[i].copyWith(
                      isDragging: false,
                    );
                    final players = List<PlayerModel>.from(_strategy.players);
                    players[i] = player;
                    setState(() {
                      _strategy = _strategy.copyWith(players: players);
                    });
                  },
                  child: PlayerWidget(player: _strategy.players[i]),
                ),
              ),
            for (final arrow in _strategy.arrows)
              CustomPaint(
                painter: ArrowPainter(arrow: arrow),
              ),
            if (_arrowStart != null && _arrowEnd != null) ...[
              CustomPaint(
                painter: ArrowPainter(
                  arrow: ArrowModel(
                    startX: _arrowStart!.dx,
                    startY: _arrowStart!.dy,
                    endX: _arrowEnd!.dx,
                    endY: _arrowEnd!.dy,
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }

  PreferredSize _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60.h),
      child: BlocBuilder<StrategyCubit, StrategyState>(
        builder: (context, state) {
          final audiences = state.whenOrNull(
            success: (audiences, __, ___) => audiences,
          );
          final isConnected = state.whenOrNull(
            success: (_, __, isConnected) => isConnected,
          );
          return TacticalAppBar(
            tactical: _tactical,
            onEndDrawerTap: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
            audiences: audiences ?? [],
            isConnected: isConnected ?? false,
          );
        },
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return BlocConsumer<TacticalBlocWrite, BlocStateWrite<TacticalModel>>(
      listener: (context, state) {
        state.whenOrNull(
          success: (item) {
            context.successToast(
              title: 'Success',
              description: 'Update ${item.name} successfully',
            );
            context.router.back();
          },
          failure: (message) {
            context.errorToast(
              title: "Error",
              description: 'Failed to update tactical strategy.',
            );
          },
        );
      },
      builder: (context, state) {
        return FloatingActionButtonExtended(
          label: const TitleSmall('End Session'),
          onPressed: () {
            try {
              context.read<TacticalBlocWrite>().add(BlocEventWrite.update(
                    UpdateTacticalParams(
                      id: _tactical!.id,
                      clubId: _tactical!.clubId,
                      mediaId: _tactical!.mediaId,
                      name: _tactical!.name,
                      description: _tactical!.description,
                      board: _tactical!.board,
                      strategic: _strategy,
                      isLive: false,
                    ),
                  ));
              if (_tactical?.isLive == true) {
                context.read<StrategyCubit>().closeWebSocket();
              }
            } catch (e) {}
          },
          isLoading: state is BlocStateWriteLoading,
          icon: const Icon(Icons.stop),
        );
      },
    );
  }
}
