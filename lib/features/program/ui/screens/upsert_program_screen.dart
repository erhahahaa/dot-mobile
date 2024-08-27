import 'dart:io';

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

class _UpsertProgramScreenState extends State<UpsertProgramScreen> {
  ProgramModel? _program;
  late TextEditingController _nameController;
  late TextEditingController _startDateController;
  late TextEditingController _endDateController;

  late FocusNode _nameFocusNode;
  late FocusNode _startDateFocusNode;
  late FocusNode _endDateFocusNode;
  late GlobalKey<FormState> _formKey;

  DateTime? _start, _end;
  File? image;
  String? imageError;

  @override
  void initState() {
    final programBloc = context.read<ProgramBlocRead>();
    _program = programBloc.state.maybeWhen(
      success: (_, __, selectedItem) => selectedItem,
      orElse: () => null,
    );
    _start = _program?.startDate;
    _end = _program?.endDate;

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
    image?.delete();
    image = null;
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
          _program == null ? 'Create new program' : 'Edit ${_program?.name}',
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
            Center(
              child: ImagePickerWidget(
                firstChild: imageFallback(
                  image,
                  _program?.media?.url,
                ),
                onTap: () async {
                  final res =
                      await sl<ImagePickerService>().getImageFromGallery();
                  res.fold(
                    (l) {
                      imageError = l.message;
                    },
                    (r) {
                      setState(() {
                        imageError = null;
                        image = r;
                      });
                    },
                  );
                },
              ),
            ),
            if (imageError != null) ...[
              BodyMedium(
                imageError,
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
                  return context.str?.programNameRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.startDate),
            FormInput(
              controller: _startDateController,
              currentFocus: _startDateFocusNode,
              nextFocus: _endDateFocusNode,
              textInputAction: TextInputAction.done,
              hintText: context.str?.enterStartDate,
              readOnly: true,
              trailing: const Icon(MoonIcons.time_calendar_add_24_regular),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.startDateRequired;
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
            FormLabel(context.str?.endDate),
            FormInput(
              controller: _endDateController,
              currentFocus: _endDateFocusNode,
              textInputAction: TextInputAction.done,
              hintText: context.str?.enterEndDate,
              readOnly: true,
              trailing: const Icon(MoonIcons.time_calendar_add_24_regular),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.endDateRequired;
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
            BlocConsumer<ProgramBlocWrite, BlocStateWrite<ProgramModel>>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (program) {
                    context.read<ProgramBlocRead>().add(
                          BlocEventRead.select(program),
                        );
                    context.read<ExerciseBlocRead>().add(
                          BlocEventRead.get(id: program.id),
                        );
                    context.router.popAndPush(const UpsertExerciseRoute());
                  },
                  failure: (message) {
                    context.errorToast(
                      title: 'Error',
                      description: message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return FormButton(
                  isLoading: state is BlocStateWriteLoading,
                  text: _program == null ? 'Create Program' : 'Update Program',
                  onTap: () {
                    if (image == null && _program == null) {
                      setState(() {
                        imageError = context.str?.programImageRequired;
                      });
                      return;
                    } else {
                      setState(() {
                        imageError = null;
                      });
                    }

                    if (_formKey.currentState?.validate() ?? false) {
                      final clubBloc = context.read<ClubBlocRead>();
                      final club = clubBloc.state.maybeWhen(
                        success: (_, __, selectedItem) => selectedItem,
                        orElse: () => null,
                      );
                      if (club == null) {
                        return context.errorToast(
                          title: 'App state obfuscated',
                          description: 'Please restart the app',
                        );
                      }

                      final id = _program?.id;
                      if (_program == null || id == null) {
                        context.read<ProgramBlocWrite>().add(
                              BlocEventWrite.create(
                                CreateProgramParams(
                                  clubId: club.id,
                                  name: _nameController.text,
                                  startDate: _start!,
                                  endDate: _end!,
                                  image: image!,
                                ),
                              ),
                            );
                      } else {
                        context.read<ProgramBlocWrite>().add(
                              BlocEventWrite.update(
                                UpdateProgramParams(
                                  id: id,
                                  clubId: club.id,
                                  name: _nameController.text,
                                  startDate: _start!,
                                  endDate: _end!,
                                  image: image,
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
}
