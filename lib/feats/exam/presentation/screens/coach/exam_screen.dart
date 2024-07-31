import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/exam/presentation/widgets/list_exam.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ExamScreen extends StatefulWidget {
  final ClubModel club;
  const ExamScreen({super.key, required this.club});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  bool hideCalendar = false, hideListExam = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExamCubit, ExamState>(
      builder: (context, state) {
        return Parent(
          floatingActionButton: FloatingButtonExtended(
            onPressed: () => context.pushNamed(
              AppRoutes.coachCreateExam.name,
              extra: {
                'club': widget.club,
              },
            ),
            icon: const Icon(Icons.add),
            text: context.str?.newExam ?? 'New Exam',
            isDisabled: state.state == BaseState.loading,
            isLoading: state.state == BaseState.loading,
          ),
          body: RefreshIndicator(
            onRefresh: () => context.read<ExamCubit>().init(
                  clubId: widget.club.id,
                ),
            child: RoundedTopBackground(
              title: widget.club.name,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              // dataSource: ExamDataSource(state.exams),
                              initialSelectedDate: DateTime.now(),
                              onTap: (calendarTapDetails) {
                                final len =
                                    calendarTapDetails.appointments?.length ??
                                        0;

                                final el = calendarTapDetails.targetElement;
                                if (el == CalendarElement.appointment &&
                                    len == 1) {
                                  final exam =
                                      calendarTapDetails.appointments?.first;
                                  context.pushNamed(
                                    AppRoutes.coachExamDetail.name,
                                    pathParameters: {'id': exam.id.toString()},
                                    extra: {
                                      'exam': exam,
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
                          context.str?.exams ?? 'Exams',
                          style: context.theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          onPressed: () => setState(
                            () => hideListExam = !hideListExam,
                          ),
                          icon: Icon(
                            hideListExam
                                ? Icons.keyboard_arrow_right
                                : Icons.keyboard_arrow_down,
                          ),
                        )
                      ],
                    ),
                    hideListExam
                        ? Container()
                        : ListExam(
                            exams: state.exams,
                            isCoach: true,
                            isLoading: state.state == BaseState.loading,
                            club: widget.club,
                          ),
                    hideListExam
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
                              padding: EdgeInsets.zero,
                              itemCount: state.exams.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                final exam = state.exams[index];
                                return InkWell(
                                  onTap: () => context.pushNamed(
                                      AppRoutes.coachExamDetail.name,
                                      pathParameters: {
                                        'id': exam.id.toString()
                                      },
                                      extra: {
                                        'exam': exam,
                                      }),
                                  child: Container(
                                    padding: EdgeInsets.all(16.w),
                                    margin: EdgeInsets.only(bottom: 8.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: context
                                          .theme.colorScheme.primaryContainer
                                          .withOpacity(0.1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "sgsg",
                                          // exam.name,
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
        );
      },
    );
  }
}
