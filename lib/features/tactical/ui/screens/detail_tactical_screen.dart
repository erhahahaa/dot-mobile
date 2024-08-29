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

class _DetailTacticalScreenState extends State<DetailTacticalScreen> {
  TacticalModel? _tactical;
  UserModel? _user;
  late GlobalKey<ScaffoldState> _scaffoldKey;
  late TransformationController _transformationController;

  @override
  void initState() {
    super.initState();

    _scaffoldKey = GlobalKey<ScaffoldState>();
    _transformationController = TransformationController();
    final tacticalBloc = context.read<TacticalBlocRead>();
    _tactical = tacticalBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );

    final userBloc = context.read<UserBloc>();
    _user = userBloc.state.whenOrNull(success: (user, __) => user);

    final tactical = _tactical;
    final user = _user;
    if (tactical != null) {
      context.read<StrategyCubit>().emitStrategy(tactical.strategic);
    }
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
    return BlocBuilder<TacticalBlocRead, BlocStateRead<TacticalModel>>(
      builder: (context, state) {
        final tactical = state.whenOrNull(
          success: (_, __, selectedItem) => selectedItem,
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
      child: BlocBuilder<TacticalBlocRead, BlocStateRead<TacticalModel>>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (_, __, selectedItem) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleSmall('Name: ${selectedItem?.name}'),
                  TitleSmall('Description: ${selectedItem?.description}'),
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
          if (strategy == null) return ErrorAlert('Strategy not found.');
          return Stack(
            children: [
              Container(
                width: screenSize.width,
                height: screenSize.width * (boardWidth / boardHeight) + 60.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child:
                    BlocBuilder<TacticalBlocRead, BlocStateRead<TacticalModel>>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      success: (_, __, selectedItem) {
                        final media = selectedItem?.media;
                        if (selectedItem == null || media == null) {
                          return const Column(
                            children: [
                              ErrorAlert('App obfuscation error,'),
                              ErrorAlert('please restart the app.')
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
