import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class UpsertTacticalScreen extends StatefulWidget implements AutoRouteWrapper {
  const UpsertTacticalScreen({super.key});

  @override
  State<UpsertTacticalScreen> createState() => _UpsertTacticalScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: sl<TacticalBlocWrite>(),
      child: this,
    );
  }
}

class _UpsertTacticalScreenState extends State<UpsertTacticalScreen> {
  TacticalModel? _tactical;
  ClubModel? club;
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  late TextEditingController _widthController;
  late TextEditingController _heightController;
  late TextEditingController _totalPlayersController;

  late FocusNode _nameFocusNode;
  late FocusNode _descriptionFocusNode;
  late FocusNode _widthFocusNode;
  late FocusNode _heightFocusNode;
  late FocusNode _totalPlayersFocusNode;
  late GlobalKey<FormState> _formKey;

  File? image;
  MediaModel? _media;
  String? _imageError;

  bool isLive = false;

  @override
  void initState() {
    super.initState();
    final clubBloc = context.read<ClubBlocRead>();
    club = clubBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );

    final tacticalBloc = context.read<TacticalBlocRead>();
    _tactical = tacticalBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );

    _nameController = TextEditingController(
      text: _tactical?.name,
    );
    _descriptionController = TextEditingController(
      text: _tactical?.description,
    );
    _widthController = TextEditingController(
      text: _tactical?.board.width.toInt().toString(),
    );
    _heightController = TextEditingController(
      text: _tactical?.board.height.toInt().toString(),
    );
    _totalPlayersController = TextEditingController(
      text: (_tactical?.strategic == null ||
              (_tactical?.strategic?.players.isEmpty ?? true))
          ? null
          : (_tactical!.strategic!.players.length / 2).toString(),
    );

    _media = _tactical?.media;

    _nameFocusNode = FocusNode();
    _descriptionFocusNode = FocusNode();
    _widthFocusNode = FocusNode();
    _heightFocusNode = FocusNode();
    _totalPlayersFocusNode = FocusNode();

    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    image?.delete();
    _media = null;

    _nameController.dispose();
    _descriptionController.dispose();
    _widthController.dispose();
    _heightController.dispose();
    _totalPlayersController.dispose();

    _nameFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _widthFocusNode.dispose();
    _heightFocusNode.dispose();
    _totalPlayersFocusNode.dispose();

    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: const TitleMedium('Tactical Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: _buildTactical(context),
      ),
    );
  }

  Widget _buildTactical(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormLabel(context.str?.tacticalName),
            FormInput(
              controller: _nameController,
              currentFocus: _nameFocusNode,
              nextFocus: _widthFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterTacticalName,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.tacticalNameRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.description),
            FormInput(
              controller: _descriptionController,
              currentFocus: _descriptionFocusNode,
              nextFocus: _widthFocusNode,
              textInputAction: TextInputAction.done,
              hintText: context.str?.enterDescription,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.descriptionRequired;
                }
                return null;
              },
            ),
            Gap(8.h),
            FormLabel('Board'),
            Stack(
              children: [
                Container(
                  width: 310.w,
                  height: 450.h,
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.theme.colorScheme.onSurface,
                      width: 1.w,
                    ),
                    color: context.theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: _media != null
                      ? _media!.determineLoader(
                          context,
                          width: 310.w,
                          height: 210.h,
                          useThumb: false,
                        )
                      : Assets.images.placeholder.placeholder.image(
                          width: 310.w,
                          height: 210.h,
                        ),
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(666.r),
                      border: Border.all(
                        color: context.theme.colorScheme.onSurface,
                        width: 1.w,
                      ),
                    ),
                    child: _buildMediaButton(context),
                  ),
                )
              ],
            ),
            if (_imageError != null)
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Text(
                  _imageError ?? '',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
              ),
            Gap(12.h),
            FormLabel(context.str?.width),
            FormInput(
              controller: _widthController,
              currentFocus: _widthFocusNode,
              nextFocus: _heightFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterWidth,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.widthRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.height),
            FormInput(
              controller: _heightController,
              currentFocus: _heightFocusNode,
              nextFocus: _totalPlayersFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterHeight,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.heightRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.totalPlayers),
            FormInput(
              controller: _totalPlayersController,
              currentFocus: _totalPlayersFocusNode,
              nextFocus: _totalPlayersFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterTotalPlayers,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.totalPlayersRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            Row(
              children: [
                Gap(4.w),
                FormLabel('Live'),
                SizedBox(width: 8.w),
                MoonSwitch(
                  value: isLive,
                  onChanged: (value) {
                    setState(() {
                      isLive = value;
                    });
                  },
                ),
              ],
            ),
            Gap(12.h),
            BlocConsumer<TacticalBlocWrite, BlocStateWrite<TacticalModel>>(
              listener: (context, state) {
                state.mapOrNull(
                  success: (tactical) {
                    context.successToast(
                      title: 'Success',
                      description: 'Tactical created successfully',
                    );
                    context.router.back();
                  },
                  failure: (failure) {
                    context.errorToast(
                      title: 'Error',
                      description: failure.message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return FormButton(
                  isLoading: state is BlocStateWriteLoading,
                  text: 'Create Tactical',
                  onTap: () {
                    if (_media == null && _tactical == null) {
                      setState(() {
                        _imageError = 'Board is required';
                      });
                      return;
                    } else {
                      setState(() {
                        _imageError = null;
                      });
                    }
                    if (_formKey.currentState!.validate()) {
                      if (club == null) {
                        return context.errorToast(
                          title: 'App state obfuscated',
                          description: 'Please restart the app',
                        );
                      }
                      final screenSize = MediaQuery.of(context).size;
                      final fieldWidth = double.parse(_widthController.text);
                      final fieldHeight = double.parse(_heightController.text);
                      final aspectRatio = fieldWidth / fieldHeight;
                      final totalPlayer =
                          int.parse(_totalPlayersController.text);

                      final List<PlayerModel> players = List.generate(
                        totalPlayer * 2,
                        (index) {
                          final team = index < totalPlayer ? 1 : 2;
                          final color = team == 1 ? Colors.blue : Colors.red;
                          final position = Offset(
                            (index % totalPlayer) *
                                (screenSize.width - 40) /
                                (totalPlayer - 1),
                            team == 1
                                ? screenSize.width * aspectRatio / 28
                                : screenSize.width * aspectRatio + 47,
                          );
                          return PlayerModel(
                            alias: 'Player $index',
                            x: position.dx,
                            y: position.dy,
                            number: index + 1,
                            team: team,
                            hexColor: color.value,
                          );
                        },
                      );

                      final strategy =
                          TacticalStrategicModel(players: players, arrows: []);
                      if (_tactical == null) {
                        context
                            .read<TacticalBlocWrite>()
                            .add(BlocEventWrite.create(
                              CreateTacticalParams(
                                clubId: club!.id,
                                name: _nameController.text,
                                description: _descriptionController.text,
                                mediaId: _media?.id,
                                board: TacticalBoardModel(
                                  width: double.parse(_widthController.text),
                                  height: double.parse(_heightController.text),
                                ),
                                isLive: isLive,
                                strategic: strategy,
                              ),
                            ));
                      } else {
                        List<PlayerModel> player = [];
                        if (_tactical?.strategic?.players.length !=
                            (int.parse(_totalPlayersController.text)) * 2) {
                          player = List.generate(
                            totalPlayer * 2,
                            (index) {
                              final team = index < totalPlayer ? 1 : 2;
                              final color =
                                  team == 1 ? Colors.blue : Colors.red;
                              final position = Offset(
                                (index % totalPlayer) *
                                    (screenSize.width - 40) /
                                    (totalPlayer - 1),
                                team == 1
                                    ? screenSize.width * aspectRatio / 28
                                    : screenSize.width * aspectRatio + 47,
                              );
                              return PlayerModel(
                                alias: 'Player $index',
                                x: position.dx,
                                y: position.dy,
                                number: index + 1,
                                team: team,
                                hexColor: color.value,
                              );
                            },
                          );
                        } else {
                          player = _tactical?.strategic?.players ?? [];
                        }
                        final strategy = TacticalStrategicModel(
                          players: player,
                          arrows: _tactical?.strategic?.arrows ?? [],
                        );

                        context.read<TacticalBlocWrite>().add(
                              BlocEventWrite.create(
                                CreateTacticalParams(
                                  clubId: club!.id,
                                  name: _nameController.text,
                                  description: _descriptionController.text,
                                  mediaId: _media?.id,
                                  board: TacticalBoardModel(
                                    width: double.parse(_widthController.text),
                                    height:
                                        double.parse(_heightController.text),
                                  ),
                                  isLive: isLive,
                                  strategic: strategy,
                                ),
                              ),
                            );
                      }
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  IconButton _buildMediaButton(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final result = await showAdaptiveDialog(
          context: context,
          builder: (ctx) {
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: context.read<TacticalMediaBlocRead>()
                    ..add(
                      BlocEventRead.get(id: club?.id, query: 'image/png'),
                    ),
                ),
                BlocProvider.value(
                  value: context.read<TacticalMediaBlocWrite>(),
                ),
              ],
              child: Dialog(
                insetPadding: EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Gap(16.h),
                    Row(
                      children: [
                        Gap(16.w),
                        const BodyLarge('Select Tactical Asset'),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                        ),
                        Gap(8.w),
                      ],
                    ),
                    Gap(8.h),
                    Expanded(
                      child: MediaView<
                          TacticalMediaBlocRead,
                          BlocStateRead<MediaModel>,
                          TacticalMediaBlocWrite,
                          BlocStateWrite<MediaModel>>(
                        club,
                        allowedExtensions: ['jpg', 'jpeg', 'png', 'svg'],
                        onUpload: (file) {
                          context.read<TacticalMediaBlocWrite>().add(
                                BlocEventWrite.create({
                                  'clubId': club?.id,
                                  'file': file,
                                }),
                              );
                        },
                        onSuccess: (item) {
                          context.read<TacticalMediaBlocRead>().add(
                                BlocEventRead.append(item),
                              );
                        },
                        onDownload: (item) {
                          context
                              .read<TacticalMediaBlocRead>()
                              .add(BlocEventRead.getOne(item));
                        },
                        onTap: (item) {
                          Navigator.of(ctx).pop(item);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
        if (result != null) {
          setState(() {
            _media = result;
          });
        }
      },
      icon: const Icon(Icons.edit),
    );
  }
}
