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

@RoutePage()
class UpsertTacticalScreen extends StatefulWidget implements AutoRouteWrapper {
  const UpsertTacticalScreen({super.key});

  @override
  _UpsertTacticalScreenState createState() => _UpsertTacticalScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: sl<TacticalBlocWrite>(),
      child: this,
    );
  }
}

class _UpsertTacticalScreenState extends State<UpsertTacticalScreen> {
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  File? image;
  MediaModel? _media;
  String? imageError;

  bool isLive = false;

  @override
  void initState() {
    // if (widget.tactical != null) {
    //   isLive = widget.tactical!.isLive;
    // }

    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    _widthController = TextEditingController();
    _heightController = TextEditingController();
    _totalPlayersController = TextEditingController();

    _nameFocusNode = FocusNode();
    _descriptionFocusNode = FocusNode();
    _widthFocusNode = FocusNode();
    _heightFocusNode = FocusNode();
    _totalPlayersFocusNode = FocusNode();

    // _formKey = GlobalKey<FormState>();

    super.initState();
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

    // _formKey.currentState?.dispose();
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
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: const Text('Board'),
            ),
            // Gap(12.h),
            // InkWell(
            //   onTap: () async {
            //     final picked = await showAdaptiveDialog<MediaModel>(
            //       context: context,
            //       builder: (_) {
            //         return Dialog(
            //           child: Container(
            //               padding: EdgeInsets.all(16.w),
            //               height: MediaQuery.of(context).size.height * 0.75,
            //               child: BlocProvider.value(
            //                 value: context.read<MediaCubit>(),
            //                 child: BlocBuilder<MediaCubit, MediaState>(
            //                   builder: (context, state) {
            //                     return AssetTab(
            //                       isLoading: state.state == BaseState.loading,
            //                       showUploadButton: true,
            //                       clubId: widget.club.id,
            //                       clubMedias: state.clubMedias,
            //                       programMedias: state.programMedias,
            //                       exerciseMedias: state.exerciseMedias,
            //                       examMedias: state.examMedias,
            //                       questionMedias: state.questionMedias,
            //                       tacticalMedias: state.tacticalMedias,
            //                       onTap: (media) {
            //                         Navigator.of(context).pop(media);
            //                       },
            //                     );
            //                   },
            //                 ),
            //               )),
            //         );
            //       },
            //     );

            //     if (picked != null) {
            //       setState(() {
            //         _media = picked;
            //       });
            //     }
            //   },
            //   child: Container(
            //     width: 310.w,
            //     height: 450.h,
            //     padding: EdgeInsets.all(8.w),
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(12.r),
            //     ),
            //     child: _media != null
            //         ? _media!.determineLoader(
            //             context,
            //             width: 310.w,
            //             height: 310.h,
            //           )
            //         : widget.tactical != null
            //             ? widget.tactical!.media?.determineLoader(
            //                 context,
            //                 width: 310.w,
            //                 height: 310.h,
            //               )
            //             : Assets.images.placeholder.placeholder.image(),
            //   ),
            // ),
            // if (_imageError != null)
            //   Padding(
            //     padding: EdgeInsets.all(8.w),
            //     child: Text(
            //       _imageError ?? '',
            //       style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            //             color: Theme.of(context).colorScheme.error,
            //           ),
            //     ),
            //   ),
            Gap(12.h),
            FormLabel(context.str?.width),
            FormInput(
              controller: _widthController,
              currentFocus: _widthFocusNode,
              nextFocus: _heightFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterWidth,
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
                const Text('Live'),
                SizedBox(width: 8.w),
                Switch(
                  value: isLive,
                  activeColor: context.theme.colorScheme.primary,
                  onChanged: (value) {
                    setState(() {
                      isLive = value;
                    });
                  },
                ),
              ],
            ),
            //   Gap(12.h),
            //   BlocConsumer<TacticalBlocWrite, BlocStateWrite<TacticalModel>>(
            //     listener: (context, state) {
            //       state.mapOrNull(
            //         success: (tactical) {
            //           context.successToast(
            //             title: 'Success',
            //             description: 'Tactical created successfully',
            //           );
            //           context.router.back();
            //         },
            //         failure: (failure) {
            //           context.errorToast(
            //             title: 'Error',
            //             description: failure.message,
            //           );
            //         },
            //       );
            //     },
            //     builder: (context, state) {
            //       return FormButton(
            //         isLoading: state is BlocStateWriteLoading,
            //         text: 'Create Tactical',
            //         onTap: () {
            //           if (_media == null && widget.tactical == null) {
            //             setState(() {
            //               _imageError = 'Board is required';
            //             });
            //             return;
            //           } else {
            //             setState(() {
            //               _imageError = null;
            //             });
            //           }
            //           if (_formKey.currentState!.validate()) {
            //             final screenSize = MediaQuery.of(context).size;
            //             final fieldWidth = double.parse(_widthController.text);
            //             final fieldHeight = double.parse(_heightController.text);
            //             final aspectRatio = fieldWidth / fieldHeight;
            //             final totalPlayer =
            //                 int.parse(_totalPlayersController.text);

            //             final List<PlayerModel> players = List.generate(
            //               totalPlayer * 2,
            //               (index) {
            //                 final team = index < totalPlayer ? 1 : 2;
            //                 final color = team == 1 ? Colors.blue : Colors.red;
            //                 final position = Offset(
            //                   (index % totalPlayer) *
            //                       (screenSize.width - 40) /
            //                       (totalPlayer - 1),
            //                   team == 1
            //                       ? screenSize.width * aspectRatio / 28
            //                       : screenSize.width * aspectRatio + 47,
            //                 );
            //                 return PlayerModel(
            //                   alias: 'Player $index',
            //                   x: position.dx,
            //                   y: position.dy,
            //                   number: index + 1,
            //                   team: team,
            //                   hexColor: color.value,
            //                 );
            //               },
            //             );

            //             final strategy =
            //                 TacticalStrategicModel(players: players, arrows: []);
            //             if (widget.tactical == null) {
            //               context.read<TacticalCubit>().create(
            //                     CreateTacticalParams(
            //                       clubId: widget.club.id,
            //                       name: _nameController.text,
            //                       description: _descriptionController.text,
            //                       mediaId: _media?.id,
            //                       board: TacticalBoardModel(
            //                         width: double.parse(_widthController.text),
            //                         height: double.parse(_heightController.text),
            //                       ),
            //                       isLive: isLive,
            //                       strategic: strategy,
            //                     ),
            //                   );
            //             } else {
            //               List<PlayerModel> player = [];
            //               if (widget.tactical?.strategic?.players !=
            //                   int.parse(_totalPlayersController.text)) {
            //                 player = List.generate(
            //                   totalPlayer * 2,
            //                   (index) {
            //                     final team = index < totalPlayer ? 1 : 2;
            //                     final color =
            //                         team == 1 ? Colors.blue : Colors.red;
            //                     final position = Offset(
            //                       (index % totalPlayer) *
            //                           (screenSize.width - 40) /
            //                           (totalPlayer - 1),
            //                       team == 1
            //                           ? screenSize.width * aspectRatio / 28
            //                           : screenSize.width * aspectRatio + 47,
            //                     );
            //                     return PlayerModel(
            //                       alias: 'Player $index',
            //                       x: position.dx,
            //                       y: position.dy,
            //                       number: index + 1,
            //                       team: team,
            //                       hexColor: color.value,
            //                     );
            //                   },
            //                 );
            //                 context.read<TacticalBlocWrite>().add(
            //                       BlocEventWrite.create(
            //                         CreateTacticalParams(
            //                           clubId: widget.club.id,
            //                           name: _nameController.text,
            //                           description: _descriptionController.text,
            //                           mediaId: _media?.id,
            //                           board: TacticalBoardModel(
            //                             width:
            //                                 double.parse(_widthController.text),
            //                             height:
            //                                 double.parse(_heightController.text),
            //                           ),
            //                           isLive: isLive,
            //                           strategic: strategy,
            //                         ),
            //                       ),
            //                     );
            //               }
            //             }
            //           }
            //         },
            //       );
            //     },
            //   ),],
          ],
        ),
      ),
    );
  }
}
