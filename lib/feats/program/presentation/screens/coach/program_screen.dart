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
    return BlocBuilder<ProgramCubit, ProgramState>(
      builder: (context, state) {
        return Parent(
          floatingActionButton: FloatingButtonExtended(
            onPressed: () => context.pushNamed(
              AppRoutes.coachCreateProgram.name,
              extra: {
                'club': widget.club,
              },
            ),
            icon: const Icon(Icons.add),
            text: context.str?.newProgram ?? 'New Program',
            isDisabled: state.state == BaseState.loading,
            isLoading: state.state == BaseState.loading,
          ),
          body: RefreshIndicator(
            onRefresh: () => context.read<ProgramCubit>().init(
                  clubId: widget.club.id,
                ),
            child: RoundedTopBackground(
              title: widget.club.name,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          context.str?.calendar ?? 'Calendar',
                          style: context.theme.textTheme.titleLarge?.copyWith(
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
                                final len =
                                    calendarTapDetails.appointments?.length ??
                                        0;

                                final el = calendarTapDetails.targetElement;
                                if (el == CalendarElement.appointment &&
                                    len == 1) {
                                  final program =
                                      calendarTapDetails.appointments?.first;
                                  context.pushNamed(
                                    AppRoutes.coachProgramDetail.name,
                                    pathParameters: {
                                      'id': program.id.toString()
                                    },
                                    extra: {
                                      'program': program,
                                      'club': widget.club,
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
                          context.str?.programs ?? 'Programs',
                          style: context.theme.textTheme.titleLarge?.copyWith(
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
                        : ListProgram(
                            programs: state.programs,
                            isCoach: true,
                            isLoading: state.state == BaseState.loading,
                            club: widget.club,
                          ),
                    // hideListProgram
                    //     ? Container()
                    //     : Container(
                    //         padding: EdgeInsets.all(8.w),
                    //         height: 380.h,
                    //         margin: EdgeInsets.only(bottom: 96.h),
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(8.r),
                    //           color: Theme.of(context)
                    //               .colorScheme
                    //               .primaryContainer
                    //               .withOpacity(0.1),
                    //         ),
                    //         child: ListView.builder(
                    //           padding: EdgeInsets.zero,
                    //           itemCount: state.programs.length,
                    //           shrinkWrap: true,
                    //           itemBuilder: (context, index) {
                    //             final program = state.programs[index];
                    //             return InkWell(
                    //               onTap: () => context.pushNamed(
                    //                   AppRoutes.coachProgramDetail.name,
                    //                   pathParameters: {
                    //                     'id': program.id.toString()
                    //                   },
                    //                   extra: {
                    //                     'program': program,
                    //                   }),
                    //               child: Container(
                    //                 padding: EdgeInsets.all(16.w),
                    //                 margin: EdgeInsets.only(bottom: 8.w),
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(8.r),
                    //                   color: context
                    //                       .theme.colorScheme.primaryContainer
                    //                       .withOpacity(0.1),
                    //                 ),
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       program.name,
                    //                       style: context
                    //                           .theme.textTheme.titleMedium
                    //                           ?.copyWith(
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                     ),
                    //                     Icon(
                    //                       Icons.arrow_forward_ios,
                    //                       size: 16.sp,
                    //                     )
                    //                   ],
                    //                 ),
                    //               ),
                    //             );
                    //           },
                    //         ),
                    //       ),
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
