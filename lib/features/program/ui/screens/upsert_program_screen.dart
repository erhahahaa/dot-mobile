import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/extensions/datetime.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

@RoutePage()
class UpsertProgramScreen extends StatefulWidget implements AutoRouteWrapper {
  final ClubModel club;
  const UpsertProgramScreen({super.key, required this.club});

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
    _nameController = TextEditingController();
    _startDateController = TextEditingController();
    _endDateController = TextEditingController();

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
        title: const TitleMedium('Program Form'),
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
                  null,
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
                state.mapOrNull(
                  success: (club) {
                    context.successToast(
                      title: 'Success',
                      description: 'Program created successfully',
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
                  text: 'Create Program',
                  onTap: () {
                    if (image == null) {
                      setState(() {
                        imageError = context.str?.programImageRequired;
                      });
                      return;
                    } else {
                      setState(() {
                        imageError = null;
                      });

                      context.read<ProgramBlocWrite>().add(
                            BlocEventWrite.create(
                              CreateProgramParams(
                                clubId: widget.club.id,
                                name: _nameController.text,
                                startDate: _start!,
                                endDate: _end!,
                                image: image!,
                              ),
                            ),
                          );
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
