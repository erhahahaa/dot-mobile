import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TacticalFormScreen extends StatefulWidget {
  final TacticalModel? tactical;
  final ClubModel club;

  const TacticalFormScreen({
    super.key,
    this.tactical,
    required this.club,
  });

  @override
  State<TacticalFormScreen> createState() => _TacticalFormScreenState();
}

class _TacticalFormScreenState extends State<TacticalFormScreen> {
  late TextEditingController _nameCon, _descriptionCon, _widthCon, _heightCon;

  late FocusNode _nameFn, _descriptionFn, _widthFn, _heightFn;

  late GlobalKey<FormState> _formKey;

  MediaModel? _media;
  String? _imageError;

  bool isLive = false;

  @override
  void initState() {
    _nameCon = TextEditingController(text: widget.tactical?.name);
    _descriptionCon = TextEditingController(text: widget.tactical?.description);
    _widthCon =
        TextEditingController(text: widget.tactical?.board.width.toString());
    _heightCon =
        TextEditingController(text: widget.tactical?.board.height.toString());

    _nameFn = FocusNode();
    _descriptionFn = FocusNode();
    _widthFn = FocusNode();
    _heightFn = FocusNode();

    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _nameCon.dispose();
    _descriptionCon.dispose();
    _widthCon.dispose();
    _heightCon.dispose();

    _nameFn.dispose();
    _descriptionFn.dispose();
    _widthFn.dispose();
    _heightFn.dispose();

    _formKey.currentState?.dispose();

    _media = null;
    _imageError = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TacticalCubit, TacticalState>(
      listener: (context, state) {
        if (state.state == BaseState.success) {
          context.pushReplacementNamed(
            AppRoutes.coachStrategyForm.name,
            extra: {
              'tactical': state.createdTactical,
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
                        height: 210.h,
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: _media != null
                            ? _media!
                                .determineLoader(width: 310.w, height: 210.h)
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
                      textInputAction: TextInputAction.done,
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
                                  ),
                                );
                          } else {
                            context.read<TacticalCubit>().update(
                                  UpdateTacticalParams(
                                    id: widget.tactical!.id,
                                    clubId: widget.club.id,
                                    name: _nameCon.text,
                                    description: _descriptionCon.text,
                                    mediaId: _media?.id,
                                    board: TacticalBoardModel(
                                      width: double.parse(_widthCon.text),
                                      height: double.parse(_heightCon.text),
                                    ),
                                    isLive: isLive,
                                  ),
                                );
                          }
                        }
                      },
                      isLoading: state.state == BaseState.loading,
                      isDisabled: state.state == BaseState.loading,
                    ),
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
