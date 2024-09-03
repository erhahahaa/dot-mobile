import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class DetailTacticalScreen extends StatefulWidget {
  final int id;

  const DetailTacticalScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  State<DetailTacticalScreen> createState() => _DetailTacticalScreenState();
}

class _DetailTacticalScreenState extends BaseState<DetailTacticalScreen> {
  TacticalModel? _tactical;
  late GlobalKey<ScaffoldState> _scaffoldKey;
  late TransformationController _transformationController;

  @override
  void initState() {
    super.initState();

    _scaffoldKey = GlobalKey<ScaffoldState>();
    _transformationController = TransformationController();
    final t = context.read<TacticalBlocRead>().state.whenOrNull(
          success: (_, __, item) => item,
        );

    safeSetState(() {
      _tactical = t;
    });

    final tactical = _tactical;
    if (tactical != null) {
      context.read<StrategyCubit>().emitStrategy(tactical.strategic);
    }
    if (tactical != null && tactical.isLive == true) {
      final bearer = context.user.token;
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
      appBar: _buildAppBar(),
      endDrawer: _buildEndDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              Gap(4.h),
              _buildBoard(screenSize),
            ],
          ),
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
            showActions: true,
          );
        },
      ),
    );
  }

  Widget _buildEndDrawer() {
    return BlocBuilder<TacticalBlocRead, BlocReadState<TacticalModel>>(
      builder: (context, state) {
        final tactical = state.whenOrNull(
          success: (_, __, selected) => selected,
        );
        if (tactical != null) {
          return BlocBuilder<StrategyCubit, StrategyState>(
            builder: (context, state) {
              state.whenOrNull(
                success: (audiences, __, ___) {
                  return TacticalDrawer(
                    tactical: tactical,
                    audiences: audiences,
                  );
                },
              );
              return const SizedBox();
            },
          );
        }
        return const SizedBox();
      },
    );
  }

  Widget _buildHeader() {
    return ContainerWrapper(
      width: double.infinity,
      child: BlocBuilder<TacticalBlocRead, BlocReadState<TacticalModel>>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (_, __, selected) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleSmall('${context.str?.name}: ${selected?.name}'),
                  TitleSmall(
                      '${context.str?.description}: ${selected?.description}'),
                ],
              );
            },
            failure: (message) => ErrorAlert(message),
            orElse: () => const MoonCircularLoader(),
          );
        },
      ),
    );
  }

  InteractiveViewer _buildBoard(Size screenSize) {
    final boardWidth = _tactical?.board.width ?? 0;
    final boardHeight = _tactical?.board.height ?? 0;
    return InteractiveViewer(
      transformationController: _transformationController,
      panEnabled: true,
      scaleEnabled: true,
      minScale: 0.5,
      maxScale: 2.0,
      child: BlocBuilder<StrategyCubit, StrategyState>(
        builder: (context, state) {
          final strategy = state.whenOrNull(
            success: (_, strategy, __) => strategy,
          );
          if (strategy == null) {
            return ErrorAlert(context.str?.strategyNotFound);
          }
          return Stack(
            children: [
              Container(
                width: screenSize.width,
                height: screenSize.width * (boardWidth / boardHeight) + 60.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child:
                    BlocBuilder<TacticalBlocRead, BlocReadState<TacticalModel>>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      success: (_, __, selected) {
                        final media = selected?.media;
                        if (selected == null || media == null) {
                          return Column(
                            children: [
                              ErrorAlert(context.str?.obsecuredState),
                              ErrorAlert(context.str?.pleaseRestartTheApp)
                            ],
                          );
                        }

                        return media.determineLoader(
                          context,
                          width: screenSize.width,
                          fit: BoxFit.fill,
                          useThumb: false,
                        );
                      },
                      failure: (message) => ErrorAlert(message),
                      orElse: () => const MoonCircularLoader(),
                    );
                  },
                ),
              ),
              for (int i = 0; i < strategy.players.length; i++)
                Positioned(
                  left: strategy.players[i].x,
                  top: strategy.players[i].y - 40 / 2,
                  child: PlayerWidget(player: strategy.players[i]),
                ),
              for (final arrow in strategy.arrows)
                CustomPaint(
                  painter: ArrowPainter(arrow: arrow),
                ),
            ],
          );
        },
      ),
    );
  }
}
