import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProgramFormScreen extends StatefulWidget {
  final ProgramModel? program;
  final int clubId;
  final String routeName;
  const ProgramFormScreen({
    super.key,
    this.program,
    required this.clubId,
    required this.routeName,
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
    _startDateCon = TextEditingController();
    _endDateCon = TextEditingController();

    _nameFn = FocusNode();
    _startDateFn = FocusNode();
    _endDateFn = FocusNode();

    _formKey = GlobalKey<FormState>();
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
    return RefreshIndicator(
      onRefresh: () {
        return context.read<ProgramCubit>().init(routeName: widget.routeName);
      },
      child: Parent(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF5767ED), Color(0xFF32ADBE)],
                ),
              ),
            ),
            Positioned(
              top: 32,
              left: 8,
              right: 8,
              child: Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 2,
                        color: context.theme.colorScheme.onPrimary,
                      ),
                    ),
                    onPressed: () => context.pop(),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_circle_left_outlined,
                          color: context.theme.colorScheme.onPrimary,
                          size: 14.sp,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          context.str?.back ?? 'Back',
                          style: TextStyle(
                            color: context.theme.colorScheme.onPrimary,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    width: 216.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(64.r),
                    ),
                    child: Text(
                      widget.program?.name ?? 'New Program',
                      style: context.theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 90,
              child: Container(
                width: 344.w,
                height: 680.h,
                padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
                decoration: BoxDecoration(
                  color: context.theme.colorScheme.surface,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.r),
                    topRight: Radius.circular(32.r),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextF(
                        key: const Key('createProgramForm_nameField'),
                        currFocusNode: _nameFn,
                        nextFocusNode: _startDateFn,
                        controller: _nameCon,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icon(
                          Icons.sports,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                        hintText: 'Enter program name',
                        hint: 'Name',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Program name is requeired';
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
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icon(
                          Icons.calendar_month,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                        hint: 'Start Date',
                        validator: (String? value) {
                          if (value == null ||
                              value.isEmpty ||
                              _start == null) {
                            return 'Start date is requeired';
                          }
                          return null;
                        },
                        onTap: () async {
                          final res = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1970),
                            lastDate: _end == null ? DateTime(2030) : _end!,
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
                        // enabled: false,
                        hint: 'End Date',
                        validator: (String? value) {
                          if (value == null || value.isEmpty || _end == null) {
                            return 'End date is requeired';
                          }
                          return null;
                        },
                        onTap: () async {
                          final res = await showDatePicker(
                            context: context,
                            firstDate:
                                _start == null ? DateTime(1970) : _start!,
                            lastDate: DateTime(2030),
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
                      BlocConsumer<ProgramCubit, ProgramState>(
                        listener: (context, state) {
                          if (state.state == BaseState.success) {
                            (context.str?.successCreateProgram ??
                                    'Program created')
                                .toToastSuccess(context);
                            final program = state.createdProgram;
                            if (program != null) {
                              context.read<ProgramCubit>().emitCaller(
                                  state.copyWith(state: BaseState.initial));
                              context.pushReplacementNamed(
                                AppRoutes.coachCreateProgramExercise.name,
                                pathParameters: {
                                  'clubId': widget.clubId.toString(),
                                },
                                extra: {'program': program},
                              );
                            }
                          }
                          if (state.state == BaseState.failure) {
                            (context.str?.failedCreateProgram ??
                                    'Program created')
                                .toToastSuccess(context);
                          }
                        },
                        builder: (context, state) {
                          return Button(
                            key: const Key('createProgramForm_createButton'),
                            text: 'Create',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (_end == null && _start == null) {
                                  return;
                                }
                                context.read<ProgramCubit>().create(
                                      CreateProgramParams(
                                        clubId: widget.clubId,
                                        name: _nameCon.text,
                                        startDate: _start!,
                                        endDate: _end!,
                                      ),
                                    );
                              }
                            },
                            isLoading: state.state == BaseState.loading,
                            isDisabled: state.state == BaseState.loading,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
