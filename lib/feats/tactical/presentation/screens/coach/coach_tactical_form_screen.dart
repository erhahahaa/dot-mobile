import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/sl.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CoachTacticalFormScreen extends StatefulWidget {
  final TacticalModel? tactical;
  final ClubModel club;

  const CoachTacticalFormScreen({
    super.key,
    this.tactical,
    required this.club,
  });

  @override
  State<CoachTacticalFormScreen> createState() =>
      _CoachTacticalFormScreenState();
}

class _CoachTacticalFormScreenState extends State<CoachTacticalFormScreen> {
  late TextEditingController _nameCon,
      _descriptionCon,
      _widthCon,
      _heightCon,
      _totalPlayersCon;

  late FocusNode _nameFn, _descriptionFn, _widthFn, _heightFn, _totalPlayersFn;

  late GlobalKey<FormState> _formKey;

  MediaModel? _media;
  String? _imageError;

  bool isLive = false;

  @override
  void initState() {
    if (widget.tactical != null) {
      isLive = widget.tactical!.isLive;
    }

    _nameCon = TextEditingController(text: widget.tactical?.name);
    _descriptionCon = TextEditingController(text: widget.tactical?.description);
    _widthCon =
        TextEditingController(text: widget.tactical?.board.width.toString());
    _heightCon =
        TextEditingController(text: widget.tactical?.board.height.toString());
    final totalPlayers = widget.tactical?.strategic?.players.length;
    _totalPlayersCon = TextEditingController(
      text: totalPlayers != null ? (totalPlayers ~/ 2).toString() : null,
    );

    _nameFn = FocusNode();
    _descriptionFn = FocusNode();
    _widthFn = FocusNode();
    _heightFn = FocusNode();
    _totalPlayersFn = FocusNode();

    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nameCon.dispose();
    _descriptionCon.dispose();
    _widthCon.dispose();
    _heightCon.dispose();
    _totalPlayersCon.dispose();

    _nameFn.dispose();
    _descriptionFn.dispose();
    _widthFn.dispose();
    _heightFn.dispose();
    _totalPlayersFn.dispose();

    _formKey.currentState?.dispose();

    _media = null;
    _imageError = null;

    sl<TacticalCubit>().closeWebSocket();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<TacticalCubit, TacticalState>(
      listener: (context, state) {
        if (state.state == BaseState.success) {
          final tactical = state.createdTactical;
          if (tactical == null) return;
          Future.delayed(
            const Duration(milliseconds: 500),
            () {
              context.pushReplacementNamed(
                AppRoutes.coachStrategyForm.name,
                extra: {
                  'route': 'tactical',
                  'tactical': state.createdTactical,
                  'screenWidth': size.width,
                  'screenHeight': size.height,
                  'aspectRatio': double.parse(_widthCon.text) /
                      double.parse(_heightCon.text),
                },
              );
            },
          );
        }
        if (state.state == BaseState.failure) {
          ToastModel(
            message: 'An error occurred',
            type: ToastType.error,
          ).fire(context);
        }
      },
      builder: (context, state) {
        return Parent(
          body: ClippedLeftRoundedRightBackground(
            title:
                widget.tactical == null ? 'Create Tactical' : 'Update Tactical',
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextF(
                      currFocusNode: _nameFn,
                      nextFocusNode: _descriptionFn,
                      controller: _nameCon,
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(
                        Icons.title,
                        color: Colors.black,
                      ),
                      hint: 'Name',
                      hintText: 'Enter tactical name',
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Tactical name is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 8.h),
                    TextF(
                      currFocusNode: _descriptionFn,
                      controller: _descriptionCon,
                      textInputAction: TextInputAction.done,
                      prefixIcon: const Icon(
                        Icons.description,
                        color: Colors.black,
                      ),
                      hint: 'Description',
                      hintText: 'Enter tactical description',
                      maxLines: 10,
                    ),
                    SizedBox(height: 8.h),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: const H5Text('Board'),
                    ),
                    SizedBox(height: 4.h),
                    InkWell(
                      onTap: () async {
                        final picked = await showAdaptiveDialog<MediaModel>(
                          context: context,
                          builder: (_) {
                            return Dialog(
                              child: Container(
                                  padding: EdgeInsets.all(16.w),
                                  height:
                                      MediaQuery.of(context).size.height * 0.75,
                                  child: BlocProvider.value(
                                    value: context.read<MediaCubit>(),
                                    child: BlocBuilder<MediaCubit, MediaState>(
                                      builder: (context, state) {
                                        return AssetTab(
                                          isLoading:
                                              state.state == BaseState.loading,
                                          showUploadButton: true,
                                          clubId: widget.club.id,
                                          clubMedias: state.clubMedias,
                                          programMedias: state.programMedias,
                                          exerciseMedias: state.exerciseMedias,
                                          examMedias: state.examMedias,
                                          questionMedias: state.questionMedias,
                                          tacticalMedias: state.tacticalMedias,
                                          onTap: (media) {
                                            Navigator.of(context).pop(media);
                                          },
                                        );
                                      },
                                    ),
                                  )),
                            );
                          },
                        );

                        if (picked != null) {
                          setState(() {
                            _media = picked;
                          });
                        }
                      },
                      child: Container(
                        width: 310.w,
                        height: 450.h,
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: _media != null
                            ? _media!.determineLoader(
                                context,
                                width: 310.w,
                                height: 310.h,
                              )
                            : widget.tactical != null
                                ? widget.tactical!.media?.determineLoader(
                                    context,
                                    width: 310.w,
                                    height: 310.h,
                                  )
                                : Assets.images.placeholder.placeholder.image(),
                      ),
                    ),
                    if (_imageError != null)
                      Padding(
                        padding: EdgeInsets.all(8.w),
                        child: Text(
                          _imageError ?? '',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                        ),
                      ),
                    SizedBox(height: 8.h),
                    TextF(
                      currFocusNode: _widthFn,
                      nextFocusNode: _heightFn,
                      controller: _widthCon,
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      ),
                      hint: 'Width (m)',
                      hintText: 'Enter board width',
                      keyboardType: TextInputType.number,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Board width is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 8.h),
                    TextF(
                      currFocusNode: _heightFn,
                      controller: _heightCon,
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.black,
                      ),
                      hint: 'Height (m)',
                      hintText: 'Enter board height',
                      keyboardType: TextInputType.number,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Board height is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 8.h),
                    TextF(
                      currFocusNode: _totalPlayersFn,
                      controller: _totalPlayersCon,
                      textInputAction: TextInputAction.done,
                      prefixIcon: const Icon(
                        Icons.sports_soccer,
                        color: Colors.black,
                      ),
                      hint: 'Total Players / team',
                      hintText: 'Enter total players / team',
                      keyboardType: TextInputType.number,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Total players is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        const H4Text('Live'),
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
                    SizedBox(height: 16.h),
                    Button(
                      text: widget.tactical == null ? 'Create' : 'Update',
                      onPressed: () {
                        if (_media == null && widget.tactical == null) {
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
                          final screenSize = MediaQuery.of(context).size;
                          final fieldWidth = double.parse(_widthCon.text);
                          final fieldHeight = double.parse(_heightCon.text);
                          final aspectRatio = fieldWidth / fieldHeight;
                          final totalPlayer = int.parse(_totalPlayersCon.text);

                          final List<PlayerModel> players = List.generate(
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

                          final strategy = TacticalStrategicModel(
                              players: players, arrows: []);
                          if (widget.tactical == null) {
                            context.read<TacticalCubit>().create(
                                  CreateTacticalParams(
                                    clubId: widget.club.id,
                                    name: _nameCon.text,
                                    description: _descriptionCon.text,
                                    mediaId: _media?.id,
                                    board: TacticalBoardModel(
                                      width: double.parse(_widthCon.text),
                                      height: double.parse(_heightCon.text),
                                    ),
                                    isLive: isLive,
                                    strategic: strategy,
                                  ),
                                );
                          } else {
                            context.read<TacticalCubit>().update(
                                  UpdateTacticalParams(
                                    id: widget.tactical!.id,
                                    clubId: widget.club.id,
                                    name: _nameCon.text,
                                    description: _descriptionCon.text,
                                    mediaId:
                                        _media?.id ?? widget.tactical?.mediaId,
                                    board: TacticalBoardModel(
                                      width: double.parse(_widthCon.text),
                                      height: double.parse(_heightCon.text),
                                    ),
                                    isLive: isLive,
                                    strategic:
                                        widget.tactical?.strategic ?? strategy,
                                  ),
                                );
                          }
                        }
                      },
                      isLoading: state.state == BaseState.loading,
                      isDisabled: state.state == BaseState.loading,
                    ),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
