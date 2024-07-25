import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ProgramScreen extends StatefulWidget {
  final ClubModel club;
  const ProgramScreen({super.key, required this.club});

  @override
  State<ProgramScreen> createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen> {
  bool hideCalendar = false, hideListProgram = false;

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.pushNamed(
          AppRoutes.coachCreateProgram.name,
          pathParameters: {
            'clubId': widget.club.id.toString(),
          },
        ),
        label: Row(
          children: [
            const Icon(Icons.add),
            SizedBox(width: 8.w),
            const Text('New Program'),
          ],
        ),
      ),
      body: BlocBuilder<ProgramCubit, ProgramState>(
        builder: (context, state) {
          return Stack(
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
                        shape: CircleBorder(),
                        side: BorderSide(
                          width: 2,
                          color: context.theme.colorScheme.onPrimary,
                        ),
                      ),
                      onPressed: () {
                        context.pop();
                        context
                            .read<ProgramCubit>()
                            .emitCaller(state.copyWith(programs: []));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_rounded,
                            color: context.theme.colorScheme.onPrimary,
                            size: 14.sp,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                      width: 248.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(64.r),
                      ),
                      child: Text(
                        widget.club.name,
                        style: context.theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        ),
                      ),
                    )
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Calendar',
                              style:
                                  context.theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            IconButton(
                              onPressed: () => setState(
                                () => hideCalendar = !hideCalendar,
                              ),
                              icon: Icon(
                                hideCalendar
                                    ? Icons.keyboard_arrow_right
                                    : Icons.keyboard_arrow_down,
                              ),
                            )
                          ],
                        ),
                        hideCalendar
                            ? Container()
                            : SizedBox(
                                height: 400.h,
                                child: SfCalendar(
                                  view: CalendarView.month,
                                  monthViewSettings: const MonthViewSettings(
                                    showAgenda: true,
                                    agendaItemHeight: 70,
                                  ),
                                  dataSource: ProgramDataSource(state.programs),
                                  initialSelectedDate: DateTime.now(),
                                  onTap: (calendarTapDetails) {
                                    final len = calendarTapDetails
                                            .appointments?.length ??
                                        0;

                                    final el = calendarTapDetails.targetElement;
                                    if (el == CalendarElement.appointment &&
                                        len == 1) {
                                      final program = calendarTapDetails
                                          .appointments?.first;
                                      context.pushNamed(
                                        AppRoutes.coachProgramDetail.name,
                                        pathParameters: {
                                          'id': program.id.toString()
                                        },
                                        extra: {
                                          'program': program,
                                        },
                                      );
                                    }
                                  },
                                ),
                              ),
                        SizedBox(height: 16.h),
                        Row(
                          children: [
                            Text(
                              'Programs',
                              style:
                                  context.theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            IconButton(
                              onPressed: () => setState(
                                () => hideListProgram = !hideListProgram,
                              ),
                              icon: Icon(
                                hideListProgram
                                    ? Icons.keyboard_arrow_right
                                    : Icons.keyboard_arrow_down,
                              ),
                            )
                          ],
                        ),
                        hideListProgram
                            ? Container()
                            : Container(
                                padding: EdgeInsets.all(8.w),
                                height: 380.h,
                                margin: EdgeInsets.only(bottom: 96.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer
                                      .withOpacity(0.1),
                                ),
                                child: ListView.builder(
                                  itemCount: state.programs.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    final program = state.programs[index];
                                    return InkWell(
                                      onTap: () => context.pushNamed(
                                          AppRoutes.coachProgramDetail.name,
                                          pathParameters: {
                                            'id': program.id.toString()
                                          },
                                          extra: {
                                            'program': program,
                                          }),
                                      child: Container(
                                        padding: EdgeInsets.all(16.w),
                                        margin: EdgeInsets.only(bottom: 16.w),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: context
                                              .theme.colorScheme.onPrimary,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              program.name,
                                              style: context
                                                  .theme.textTheme.titleMedium
                                                  ?.copyWith(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 16.sp,
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
