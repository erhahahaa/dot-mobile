import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProgramFormScreen extends StatefulWidget {
  final ProgramModel? program;
  final ClubModel club;
  const ProgramFormScreen({
    super.key,
    this.program,
    required this.club,
  });

  @override
  State<ProgramFormScreen> createState() => _ProgramFormScreenState();
}

class _ProgramFormScreenState extends State<ProgramFormScreen> {
  late TextEditingController _nameCon, _startDateCon, _endDateCon;

  late FocusNode _nameFn, _startDateFn, _endDateFn;

  late GlobalKey<FormState> _formKey;

  DateTime? _start, _end;

  @override
  void initState() {
    _nameCon = TextEditingController(text: widget.program?.name);
    _startDateCon = TextEditingController(
      text: widget.program?.startDate?.toDayMonthYear(),
    );
    _endDateCon = TextEditingController(
      text: widget.program?.endDate?.toDayMonthYear(),
    );

    _nameFn = FocusNode();
    _startDateFn = FocusNode();
    _endDateFn = FocusNode();

    _formKey = GlobalKey<FormState>();

    if (widget.program != null) {
      _start = widget.program!.startDate;
      _end = widget.program!.endDate;
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameCon.dispose();
    _startDateCon.dispose();
    _endDateCon.dispose();

    _nameFn.dispose();
    _startDateFn.dispose();
    _endDateFn.dispose();

    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProgramCubit, ProgramState>(
      listener: (context, state) {
        if (state.state == BaseState.success) {
          final program = state.createdProgram;
          if (program != null && widget.program == null) {
            context.pushReplacementNamed(
              AppRoutes.coachCreateProgramExercise.name,
              extra: {
                'club': widget.club,
                'program': program,
              },
            );
          }
          if (program != null && widget.program != null) {
            final eCub = context.read<ExerciseCubit>();

            eCub.getAll(const PaginationParams(), program.id).then(
              (_) {
                context.pushReplacementNamed(
                  AppRoutes.coachEditProgramExercise.name,
                  extra: {
                    'club': widget.club,
                    'program': program,
                    'exercises': eCub.state.exercises.isEmpty
                        ? null
                        : eCub.state.exercises,
                  },
                );
              },
            );
          }
          context.read<ProgramCubit>().emitInitial();
        }
        if (state.state == BaseState.failure) {
          ToastModel(
            message: widget.program == null
                ? context.str?.failedCreateProgram
                : context.str?.failedEditProgram,
            type: ToastType.error,
          ).fire(context);
          context.read<ProgramCubit>().emitInitial();
        }
      },
      builder: (context, state) {
        return Parent(
          body: RoundedTopBackground(
            title: widget.program == null
                ? (context.str?.createProgram ?? 'Create Program')
                : (context.str?.editProgram ?? 'Edit Program'),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SportImageContainer(
                      imageUrl: widget.program?.media?.url,
                      file: state.image,
                      width: 344.w,
                      height: 200.w,
                      borderRadius: BorderRadius.circular(12.r),
                      onPressed: () =>
                          context.read<ProgramCubit>().pickImageFromGallery(),
                    ),
                    SizedBox(height: 16.h),
                    TextF(
                      key: const Key('createProgramForm_nameField'),
                      currFocusNode: _nameFn,
                      nextFocusNode: _startDateFn,
                      controller: _nameCon,
                      textInputAction: TextInputAction.done,
                      prefixIcon: Icon(
                        Icons.sports,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText:
                          context.str?.enterProgramName ?? 'Enter program name',
                      hint: context.str?.name ?? 'Name',
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return context.str?.programNameRequired ??
                              'Program name is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 8.h),
                    TextF(
                      key: const Key('createProgramForm_startDateField'),
                      currFocusNode: _startDateFn,
                      nextFocusNode: _endDateFn,
                      controller: _startDateCon,
                      textInputAction: TextInputAction.done,
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hint: context.str?.startDate ?? 'Start Date',
                      hintText:
                          context.str?.enterStartDate ?? 'Enter the start date',
                      validator: (String? value) {
                        if (value == null || value.isEmpty || _start == null) {
                          return context.str?.startDateRequired ??
                              'Start date is required';
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
                            _startDateCon.text = res.toDayMonthYear();
                          });
                        }
                      },
                      suffixIcon: IconButton(
                        onPressed: () async {
                          final res = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1970),
                            lastDate: _end == null ? DateTime(2030) : _end!,
                            initialDate: _start,
                          );
                          if (res != null) {
                            setState(() {
                              _start = res;
                              _startDateCon.text = res.toDayMonthYear();
                            });
                          }
                        },
                        icon: Icon(
                          Icons.calendar_today,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextF(
                      key: const Key('createProgramForm_endDateField'),
                      currFocusNode: _endDateFn,
                      controller: _endDateCon,
                      textInputAction: TextInputAction.done,
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hint: context.str?.endDate ?? 'End Date',
                      hintText:
                          context.str?.enterEndDate ?? 'Enter the end date',
                      validator: (String? value) {
                        if (value == null || value.isEmpty || _end == null) {
                          return context.str?.endDateRequired ??
                              'End date is required';
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
                            _endDateCon.text = res.toDayMonthYear();
                          });
                        }
                      },
                      suffixIcon: IconButton(
                        onPressed: () async {
                          final res = await showDatePicker(
                            context: context,
                            firstDate:
                                _start == null ? DateTime(1970) : _start!,
                            lastDate: DateTime(2030),
                            initialDate: _end,
                          );
                          if (res != null) {
                            setState(() {
                              _end = res;
                              _endDateCon.text = res.toDayMonthYear();
                            });
                          }
                        },
                        icon: Icon(
                          Icons.calendar_today,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Button(
                      key: const Key('createProgramForm_createButton'),
                      text: widget.program == null
                          ? context.str?.create ?? 'Create'
                          : context.str?.edit ?? 'Edit',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (_end == null && _start == null) {
                            return;
                          }

                          if (widget.program != null) {
                            context.read<ProgramCubit>().update(
                                  UpdateProgramParams(
                                    id: widget.program!.id,
                                    clubId: widget.club.id,
                                    name: _nameCon.text,
                                    startDate: _start!,
                                    endDate: _end!,
                                    image: state.image,
                                  ),
                                );
                          } else {
                            context.read<ProgramCubit>().create(
                                  CreateProgramParams(
                                    clubId: widget.club.id,
                                    name: _nameCon.text,
                                    startDate: _start!,
                                    endDate: _end!,
                                    image: state.image,
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
