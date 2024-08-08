import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TacticalDetailScreen extends StatefulWidget {
  final TacticalModel tactical;
  final Size screenSize;
  final double aspectRatio;

  const TacticalDetailScreen({
    super.key,
    required this.tactical,
    required this.screenSize,
    required this.aspectRatio,
  });

  @override
  State<TacticalDetailScreen> createState() => _TacticalDetailScreenState();
}

class _TacticalDetailScreenState extends State<TacticalDetailScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TransformationController _transformationController =
      TransformationController();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      if (widget.tactical.isLive) {
        context.read<TacticalCubit>().listenWebSocket(widget.tactical);
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<TacticalCubit>().emitStrategy(widget.tactical.strategic);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TacticalCubit, TacticalState>(
      builder: (context, state) {
        return Parent(
          scaffoldKey: _scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.h),
            child: TacticalAppBar(
              tactical: widget.tactical,
              onEndDrawerTap: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              audiences: state.audiences,
              isConnected: state.isConnected,
            ),
          ),
          endDrawer: widget.tactical.isLive == true
              ? TacticalDrawer(
                  tactical: widget.tactical, audiences: state.audiences)
              : null,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  EightContainer(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        H3Text('Name: ${widget.tactical.name}'),
                        if (widget.tactical.description != null) ...[
                          H6Text('Description: ${widget.tactical.description}'),
                        ],
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  InteractiveViewer(
                    transformationController: _transformationController,
                    panEnabled: true,
                    scaleEnabled: true,
                    minScale: 0.5,
                    maxScale: 2.0,
                    child: Stack(
                      children: [
                        Container(
                          width: widget.screenSize.width,
                          height: widget.screenSize.width * widget.aspectRatio +
                              60.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: widget.tactical.media?.determineLoader(
                              width: widget.screenSize.width, fit: BoxFit.fill),
                        ),
                        for (int i = 0; i < state.strategic.players.length; i++)
                          Positioned(
                            left: state.strategic.players[i].x,
                            top: state.strategic.players[i].y - 40 / 2,
                            child: PlayerWidget(
                                player: state.strategic.players[i]),
                          ),
                        for (final arrow in state.strategic.arrows)
                          CustomPaint(
                            painter: ArrowPainter(arrow: arrow),
                          ),
                      ],
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
