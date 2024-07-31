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
          body: RoundedTopBackground(
            title: widget.club.name,
            child: RefreshIndicator(
              onRefresh: () => context.read<ProgramCubit>().init(
                    clubId: widget.club.id,
                  ),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
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
