import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StrategyFormScreen extends StatefulWidget {
  final TacticalModel tactical;
  final Size screenSize;
  final double aspectRatio;

  const StrategyFormScreen({
    super.key,
    required this.tactical,
    required this.screenSize,
    required this.aspectRatio,
  });

  @override
  State<StrategyFormScreen> createState() => _StrategyFormScreenState();
}

class _StrategyFormScreenState extends State<StrategyFormScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final TransformationController _transformationController =
      TransformationController();

  Offset? arrowStart;
  Offset? arrowEnd;
  bool isDrawingMode = false;
  bool isConnected = false;
 

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TacticalCubit, TacticalState>(
      builder: (context, state) {
        return Parent(
          scaffoldKey: _scaffoldKey,
          appBar: AppBar(
            title: Text(widget.tactical.name),
            actions: [
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
                          style: context.theme.textTheme.bodySmall?.copyWith(
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
                  color: isConnected ? Colors.green : Colors.red,
                ),
              ),
              SizedBox(width: 16.w),
            ],
          ),
          endDrawer: Drawer(
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
                            backgroundImage:
                                CachedNetworkImageProvider(audience.image),
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
          ),
          body: SafeArea(
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
                          height: widget.screenSize.width * widget.aspectRatio +
                              60.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Assets.images.bg.rugbyUnionPitch.svg(
                            width: widget.screenSize.width,
                          ),
                        ),
                        for (int i = 0; i < state.strategic.players.length; i++)
                          Positioned(
                            left: state.strategic.players[i].x,
                            top: state.strategic.players[i].y - 40 / 2,
                            child: GestureDetector(
                              onPanStart: (details) {
                                setState(() {
                                  state.strategic.players[i] = state
                                      .strategic.players[i]
                                      .copyWith(isDragging: true);
                                });
                              },
                              onPanUpdate: (details) {
                                setState(() {
                                  state.strategic.players[i] =
                                      state.strategic.players[i].copyWith(
                                    x: state.strategic.players[i].x +
                                        details.delta.dx,
                                    y: state.strategic.players[i].y +
                                        details.delta.dy,
                                  );
                                });
                                final channelName =
                                    'club:${widget.tactical.clubId}:tactical:${widget.tactical.id}';

                                final data = StrategyWSModel(
                                  event: WebSocketEvent.message,
                                  params: StrategyWsParamModel(
                                    clubId: widget.tactical.clubId,
                                    channel: channelName,
                                    user: state.user,
                                  ),
                                  data: state.strategic,
                                ).toJson();

                                context
                                    .read<TacticalCubit>()
                                    .sendWebSocket(jsonEncode(data));
                              },
                              onPanEnd: (details) {
                                setState(() {
                                  state.strategic.players[i] = state
                                      .strategic.players[i]
                                      .copyWith(isDragging: false);
                                });
                              },
                              child: PlayerWidget(
                                  player: state.strategic.players[i]),
                            ),
                          ),
                        for (final arrow in state.strategic.arrows)
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
                      onPressed: context.read<TacticalCubit>().resetPositions,
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
                ElevatedButton(
                  onPressed: () {
                    context.read<TacticalCubit>().update(UpdateTacticalParams(
                          id: widget.tactical.id,
                          clubId: widget.tactical.clubId,
                          mediaId: widget.tactical.mediaId,
                          name: widget.tactical.name,
                          description: widget.tactical.description,
                          board: widget.tactical.board,
                          strategic: state.strategic,
                          isLive: widget.tactical.isLive,
                        ));
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Save Positions',
                    style: context.theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
