import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CoachStrategyFormScreen extends StatefulWidget {
  final TacticalModel tactical;
  final Size screenSize;
  final double aspectRatio;

  const CoachStrategyFormScreen({
    super.key,
    required this.tactical,
    required this.screenSize,
    required this.aspectRatio,
  });

  @override
  State<CoachStrategyFormScreen> createState() =>
      _CoachStrategyFormScreenState();
}

class _CoachStrategyFormScreenState extends State<CoachStrategyFormScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final TransformationController _transformationController =
      TransformationController();

  Offset? arrowStart;
  Offset? arrowEnd;
  bool isDrawingMode = false;
  late TacticalStrategicModel strategic;

  @override
  void initState() {
    super.initState();
    strategic = widget.tactical.strategic ?? TacticalStrategicModel();
    Future.delayed(Duration(seconds: 2), () {
      if (widget.tactical.isLive) {
        context.read<TacticalCubit>().listenWebSocket(widget.tactical);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TacticalCubit, TacticalState>(
      listenWhen: (p, c) => p.state != c.state,
      listener: (context, state) {
        if (state.failure != null) {
          ToastModel(
            message: state.failure?.message ?? 'An error occurred',
            type: ToastType.error,
          ).fire(context);
        }
        if (state.state == BaseState.success) {
          ToastModel(
            message: 'Positions saved successfully',
            type: ToastType.success,
          ).fire(context);
          context.pop();
        }
      },
      buildWhen: (p, c) =>
          p.audiences != c.audiences ||
          p.isConnected != c.isConnected ||
          p.state != c.state,
      builder: (context, state) {
        return Parent(
          scaffoldKey: _scaffoldKey,
          appBar: AppBar(
            title: Text(widget.tactical.name),
            actions: widget.tactical.isLive == true
                ? [
                    IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState?.openEndDrawer();
                      },
                      icon: Stack(
                        children: [
                          Icon(Icons.group, size: 36.sp),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                state.audiences.length.toString(),
                                style:
                                    context.theme.textTheme.bodySmall?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Container(
                      width: 12.w,
                      height: 12.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: state.isConnected ? Colors.green : Colors.red,
                      ),
                    ),
                    SizedBox(width: 16.w),
                  ]
                : [],
          ),
          endDrawer: widget.tactical.isLive == true
              ? Drawer(
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Column(
                        children: [
                          SizedBox(height: 16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Audiences',
                                style: context.theme.textTheme.titleLarge,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.close),
                              ),
                            ],
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.audiences.length,
                            itemBuilder: (context, index) {
                              final audience = state.audiences[index];
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: CachedNetworkImageProvider(
                                      audience.image),
                                ),
                                title: Text(audience.name),
                                subtitle: Text(audience.email),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                )
              : null,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InteractiveViewer(
                    transformationController: _transformationController,
                    panEnabled: true,
                    scaleEnabled: true,
                    minScale: 0.5,
                    maxScale: 2.0,
                    child: GestureDetector(
                      onPanStart: isDrawingMode
                          ? (details) {
                              setState(() {
                                arrowStart = details.localPosition;
                              });
                            }
                          : null,
                      onPanUpdate: isDrawingMode
                          ? (details) {
                              setState(() {
                                arrowEnd = details.localPosition;
                              });
                            }
                          : null,
                      onPanEnd: isDrawingMode
                          ? (details) {
                              if (arrowStart != null && arrowEnd != null) {
                                setState(() {
                                  context.read<TacticalCubit>().addArrow(
                                        ArrowModel(
                                          startX: arrowStart!.dx,
                                          startY: arrowStart!.dy,
                                          endX: arrowEnd!.dx,
                                          endY: arrowEnd!.dy,
                                        ),
                                      );
                                  arrowStart = null;
                                  arrowEnd = null;
                                });
                              }
                            }
                          : null,
                      child: Stack(
                        children: [
                          Container(
                            width: widget.screenSize.width,
                            height:
                                widget.screenSize.width * widget.aspectRatio +
                                    60.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            // child: Assets.images.bg.rugbyUnionPitch.svg(
                            //   width: widget.screenSize.width,
                            // ),

                            child: widget.tactical.media?.determineLoader(
                                width: widget.screenSize.width,
                                fit: BoxFit.fill),
                          ),
                          for (int i = 0; i < strategic.players.length; i++)
                            Positioned(
                              left: strategic.players[i].x,
                              top: strategic.players[i].y - 40 / 2,
                              child: GestureDetector(
                                // onPanStart: (details) {
                                //   setState(() {
                                //     state.strategic.players[i] = state
                                //         .strategic.players[i]
                                //         .copyWith(isDragging: true);
                                //   });
                                // },
                                onPanUpdate: (details) {
                                  final player = strategic.players[i].copyWith(
                                    x: strategic.players[i].x +
                                        details.delta.dx,
                                    y: strategic.players[i].y +
                                        details.delta.dy,
                                  );
                                  final players =
                                      List<PlayerModel>.from(strategic.players);
                                  players[i] = player;
                                  setState(() {
                                    strategic =
                                        strategic.copyWith(players: players);
                                  });

                                  if (widget.tactical.isLive) {
                                    final channelName =
                                        'club:${widget.tactical.clubId}:tactical:${widget.tactical.id}';

                                    final data = StrategyWSModel(
                                      event: WebSocketEvent.message,
                                      params: StrategyWsParamModel(
                                        clubId: widget.tactical.clubId,
                                        channel: channelName,
                                        user: state.user,
                                      ),
                                      data: strategic,
                                    ).toJson();
                                    context
                                        .read<TacticalCubit>()
                                        .sendWebSocket(jsonEncode(data));
                                  }
                                },
                                // onPanEnd: (details) {
                                //   setState(() {
                                //     state.strategic.players[i] = state
                                //         .strategic.players[i]
                                //         .copyWith(isDragging: false);
                                //   });
                                // },
                                child:
                                    PlayerWidget(player: strategic.players[i]),
                              ),
                            ),
                          for (final arrow in strategic.arrows)
                            CustomPaint(
                              painter: ArrowPainter(arrow: arrow),
                            ),
                          if (arrowStart != null && arrowEnd != null)
                            CustomPaint(
                              painter: ArrowPainter(
                                arrow: ArrowModel(
                                  startX: arrowStart!.dx,
                                  startY: arrowStart!.dy,
                                  endX: arrowEnd!.dx,
                                  endY: arrowEnd!.dy,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          final initial = context
                              .read<TacticalCubit>()
                              .getInitialPosition();
                          setState(() {
                            strategic = strategic.copyWith(players: initial);
                          });
                        },
                        icon: const Icon(Icons.refresh),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isDrawingMode = !isDrawingMode;
                          });
                        },
                        icon: Icon(isDrawingMode ? Icons.done : Icons.edit),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Button(
                      onPressed: () {
                        context.read<TacticalCubit>().update(
                              UpdateTacticalParams(
                                id: widget.tactical.id,
                                clubId: widget.tactical.clubId,
                                mediaId: widget.tactical.mediaId,
                                name: widget.tactical.name,
                                description: widget.tactical.description,
                                board: widget.tactical.board,
                                strategic: strategic,
                                isLive: false,
                              ),
                            );
                      },
                      text: 'End Session',
                      isLoading: state.state == BaseState.loading,
                      isDisabled: state.state == BaseState.loading,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
