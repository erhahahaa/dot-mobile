import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/app.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class DetailTacticalScreen extends StatefulWidget implements AutoRouteWrapper {
  final int id;

  const DetailTacticalScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  State<DetailTacticalScreen> createState() => _DetailTacticalScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    final tacticalBloc = context.read<TacticalBlocRead>();
    final tactical = tacticalBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );
    return BlocProvider.value(
      value: context.read<StrategyCubit>()
        ..emitStrategy(
          tactical?.strategic,
        ),
      child: this,
    );
  }
}

class _DetailTacticalScreenState extends State<DetailTacticalScreen> {
  TacticalModel? _tactical;
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
      appBar: _buildAppBar(context),
      endDrawer: _buildEndDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              Gap(8.h),
              _buildBoard(screenSize),
            ],
          ),
        ),
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
          return state.maybeWhen(
            success: (audiences, strategy, isConnected) {
              return Stack(
                children: [
                  Container(
                    width: screenSize.width,
                    height:
                        screenSize.width * (boardWidth / boardHeight) + 60.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: BlocBuilder<TacticalBlocRead,
                        BlocStateRead<TacticalModel>>(
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
            orElse: () => const MoonCircularLoader(),
          );
        },
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: BlocConsumer<TacticalBlocRead, BlocStateRead<TacticalModel>>(
        listener: (context, state) {
          state.whenOrNull(
            success: (_, __, selectedItem) {
              if (selectedItem == null) return;
              final userBloc = context.read<UserBloc>();
              final user = userBloc.state.whenOrNull(
                success: (user, _) => user,
              );
              if (user == null) return;
              final bearer = user.token;
              if (bearer == null) {
                context.errorToast(
                  title: 'Unauthorized',
                  description: 'Please login first.',
                );
                return;
              }
              if (selectedItem.isLive) {
                context
                    .read<StrategyCubit>()
                    .listenWebSocket(selectedItem, bearer);
              }
            },
          );
        },
        builder: (context, state) {
          if (state is BlocStateReadSuccess) {
            final tactical = state.whenOrNull(
              success: (_, __, selectedItem) => selectedItem,
            );
            if (tactical != null) {
              return TitleLarge(tactical.name);
            }
          }
          return const TitleLarge('Detail Tactical');
        },
      ),
      actions: [
        BlocListener<TacticalBlocWrite, BlocStateWrite<TacticalModel>>(
          listener: (context, state) {
            state.whenOrNull(
              success: (success) {
                context.read<TacticalBlocRead>().add(
                      BlocEventRead.remove(success.id),
                    );
                context.successToast(
                  title: 'Success',
                  description: '${success.name} has been deleted successfully.',
                );
                Navigator.of(context).pop();
              },
              failure: (message) {
                context.errorToast(
                  title: 'Failure',
                  description: message,
                );
              },
            );
          },
          child: MoonButton.icon(
            icon: const Icon(
              MoonIcons.generic_delete_24_light,
              color: Colors.red,
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (ctx) {
                  return BlocProvider.value(
                    value: context.read<TacticalBlocWrite>(),
                    child: AlertDialog(
                      title: const Text('Delete tactical'),
                      content: const Text(
                          'Are you sure you want to delete this tactical?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            context.read<TacticalBlocWrite>().add(
                                  BlocEventWrite.delete(DeleteTacticalParams(
                                      tacticalId: widget.id)),
                                );
                            Navigator.of(ctx).pop();
                          },
                          child: const Text('Delete'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
        MoonButton.icon(
          icon: const Icon(MoonIcons.generic_edit_24_light),
          onTap: () {
            context.router.popAndPush(const UpsertTacticalRoute());
          },
        )
      ],
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
}
