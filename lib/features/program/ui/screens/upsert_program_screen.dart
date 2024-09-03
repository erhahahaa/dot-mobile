import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/extensions/datetime.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class UpsertProgramScreen extends StatefulWidget implements AutoRouteWrapper {
  const UpsertProgramScreen({super.key});

  @override
  State<UpsertProgramScreen> createState() => _UpsertProgramScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: sl<ProgramBlocWrite>(),
      child: this,
    );
  }
}

class _UpsertProgramScreenState extends BaseState<UpsertProgramScreen> {
  ProgramModel? _program;
  late TextEditingController _nameController;
  late TextEditingController _startDateController;
  late TextEditingController _endDateController;

  late FocusNode _nameFocusNode;
  late FocusNode _startDateFocusNode;
  late FocusNode _endDateFocusNode;
  late GlobalKey<FormState> _formKey;

  DateTime? _start, _end;
  String? _imageError;

  MediaModel? _media;

  @override
  void initState() {
    final p = context.read<ProgramBlocRead>().state.whenOrNull(
          success: (_, __, item) => item,
        );

    safeSetState(() {
      _program = p;
    });

    _start = _program?.startDate;
    _end = _program?.endDate;
    _media = _program?.media;
    _nameController = TextEditingController(text: _program?.name);
    _startDateController = TextEditingController(
      text: _program?.startDate?.toDayMonthYear(),
    );
    _endDateController = TextEditingController(
      text: _program?.endDate?.toDayMonthYear(),
    );

    _nameFocusNode = FocusNode();
    _startDateFocusNode = FocusNode();
    _endDateFocusNode = FocusNode();

    _formKey = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();

    _nameFocusNode.dispose();
    _startDateFocusNode.dispose();
    _endDateFocusNode.dispose();

    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: TitleMedium(
          _program == null
              ? context.str?.createProgram
              : context.str?.updateProgram,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: _buildProgram(context),
      ),
    );
  }

  Widget _buildProgram(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 310.w,
                  height: 210.h,
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
            SizedBox(height: 16.h),
            if (_imageError != null) ...[
              BodyMedium(
                _imageError,
                color: context.theme.colorScheme.error,
              ),
            ],
            Gap(16.h),
            FormLabel(context.str?.programName),
            FormInput(
              controller: _nameController,
              currentFocus: _nameFocusNode,
              nextFocus: _startDateFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterProgramName,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.programNameIsRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.programStartDate),
            FormInput(
              controller: _startDateController,
              currentFocus: _startDateFocusNode,
              nextFocus: _endDateFocusNode,
              textInputAction: TextInputAction.done,
              hintText: context.str?.enterProgramStartDate,
              readOnly: true,
              trailing: const Icon(MoonIcons.time_calendar_add_24_regular),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.programStartDateIsRequired;
                }
                return null;
              },
              onTap: () async {
                final res = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1970),
                  lastDate: _end == null ? DateTime(2030) : _end!,
                  initialDate: _end,
                );
                if (res != null) {
                  setState(() {
                    _start = res;
                    _startDateController.text = res.toDayMonthYear();
                  });
                }
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.programEndDate),
            FormInput(
              controller: _endDateController,
              currentFocus: _endDateFocusNode,
              textInputAction: TextInputAction.done,
              hintText: context.str?.enterProgramEndDate,
              readOnly: true,
              trailing: const Icon(MoonIcons.time_calendar_add_24_regular),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.programEndDateIsRequired;
                }
                return null;
              },
              onTap: () async {
                final res = await showDatePicker(
                  context: context,
                  firstDate: _start == null ? DateTime(1970) : _start!,
                  lastDate: DateTime(2030),
                  initialDate: _end,
                );
                if (res != null) {
                  setState(() {
                    _end = res;
                    _endDateController.text = res.toDayMonthYear();
                  });
                }
              },
            ),
            Gap(12.h),
            BlocConsumer<ProgramBlocWrite, BlocWriteState<ProgramModel>>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (program) {
                    context.read<ProgramBlocRead>().add(
                          BlocReadEvent.select(program),
                        );
                    context.read<ExerciseBlocRead>().add(
                          BlocReadEvent.get(id: program.id),
                        );
                    Future.delayed(Durations.medium2, () {
                      if (context.mounted) {
                        context.router.popAndPush(const UpsertExerciseRoute());
                      }
                    });
                  },
                  failure: (message) {
                    context.errorToast(
                      title: _program == null
                          ? context.str?.programCreateFailed
                          : context.str?.programUpdateFailed,
                      description: message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return FormButton(
                  isLoading: state is BlocWriteStateLoading,
                  text: _program == null
                      ? context.str?.createProgram
                      : context.str?.updateProgram,
                  onTap: () {
                    if (_media == null && _program == null) {
                      setState(() {
                        _imageError = context.str?.programImageIsRequired;
                      });
                      return;
                    } else {
                      setState(() {
                        _imageError = null;
                      });
                    }

                    if (_formKey.currentState?.validate() ?? false) {
                      final club = context.clubRead;
                      if (club == null) {
                        return context.errorToast(
                          title: context.str?.obsecuredState,
                          description: context.str?.pleaseRestartTheApp,
                        );
                      }

                      final id = _program?.id;
                      if (_program == null || id == null) {
                        context.read<ProgramBlocWrite>().add(
                              BlocWriteEvent.create(
                                CreateProgramParams(
                                  clubId: club.id,
                                  name: _nameController.text,
                                  startDate: _start!,
                                  endDate: _end!,
                                  mediaId: _media!.id,
                                ),
                              ),
                            );
                      } else {
                        context.read<ProgramBlocWrite>().add(
                              BlocWriteEvent.update(
                                UpdateProgramParams(
                                  id: id,
                                  clubId: club.id,
                                  name: _nameController.text,
                                  startDate: _start!,
                                  endDate: _end!,
                                  mediaId: _media!.id,
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
        final res = await showAdaptiveDialog<MediaModel>(
          context: context,
          builder: (ctx) {
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: context.read<ProgramMediaBlocRead>()
                    ..add(
                      BlocReadEvent.get(id: context.clubRead?.id),
                    ),
                ),
                BlocProvider.value(
                  value: context.read<ProgramMediaBlocWrite>(),
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
                        BodyLarge(context.str?.selectProgramAsset),
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
                          ProgramMediaBlocRead,
                          BlocReadState<MediaModel>,
                          ProgramMediaBlocWrite,
                          BlocWriteState<MediaModel>>(
                        allowedExtensions: const ['jpg', 'jpeg', 'png'],
                        onUpload: (file) {
                          final club = context
                              .read<ClubBlocRead>()
                              .state
                              .whenOrNull(success: (_, __, item) => item);
                          context.read<ProgramMediaBlocWrite>().add(
                                BlocWriteEvent.create({
                                  'clubId': club?.id,
                                  'file': file,
                                }),
                              );
                        },
                        onSuccess: (item) {
                          context.read<ProgramMediaBlocRead>().add(
                                BlocReadEvent.append(item),
                              );
                        },
                        onDownload: (item) {
                          context
                              .read<ProgramMediaBlocRead>()
                              .add(BlocReadEvent.getOne(item));
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
        if (res != null) {
          setState(() {
            _media = res;
          });
        }
      },
      icon: const Icon(Icons.edit),
    );
  }
}
