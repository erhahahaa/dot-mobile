import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

@RoutePage()
class ListProgramScreen extends StatefulWidget {
  const ListProgramScreen({super.key});

  @override
  State<ListProgramScreen> createState() => _ListProgramScreenState();
}

class _ListProgramScreenState extends BaseState<ListProgramScreen> {
  bool hideCalendar = true, hideListProgram = false;

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: TitleMedium(context.clubWatch?.name),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          BackTopButton(
            show: showScrollToTopButton,
            onPressed: scrollToTop,
          ),
          Gap(8.h),
          FloatingActionButton.extended(
            heroTag: 'new_program_button_$hashCode',
            onPressed: () {
              context.router.push(const UpsertProgramRoute());
            },
            icon: const Icon(Icons.add),
            label: Text(context.str?.newProgram ?? 'New Program'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<ProgramBlocRead>().add(
                  BlocEventRead.get(id: context.clubRead?.id),
                );
          },
          child: SingleChildScrollView(
            controller: scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Gap(8.h),
                _buildHeader(context),
                Gap(16.h),
                _buildCalendar(context),
                _buildListProgram(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: MySearchBar(
            width: 325.w,
            height: 32.h,
            controller: searchController,
            hintText:
                '${context.str?.search} ${context.str?.program.toLowerCase()} ...',
            onChanged: (value) {
              if (value == null) return;
              context.read<ProgramBlocRead>().add(
                    BlocEventRead.filter(value),
                  );
            },
            trailing: MoonButton.icon(
              buttonSize: MoonButtonSize.xs,
              icon: const Icon(MoonIcons.controls_close_24_light),
              onTap: () {
                clearSearch();
                context.read<ProgramBlocRead>().add(
                      const BlocEventRead.filter(''),
                    );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCalendar(BuildContext context) {
    Widget calendar(List<ProgramModel> programs) {
      return SfCalendar(
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
          showAgenda: true,
          agendaItemHeight: 70,
        ),
        dataSource: ProgramCalendarModel(programs),
        initialSelectedDate: DateTime.now(),
        onTap: (calendarTapDetails) {
          final len = calendarTapDetails.appointments?.length ?? 0;

          final el = calendarTapDetails.targetElement;
          if (el == CalendarElement.appointment && len == 1) {
            final program = calendarTapDetails.appointments?.first;
            context.read<ProgramBlocRead>().add(
                  BlocEventRead.select(program),
                );
            context.router.push(
              DetailProgramRoute(id: program.id),
            );
          }
        },
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            TitleSmall(context.str?.calendar),
            IconButton(
              onPressed: () => setState(() => hideCalendar = !hideCalendar),
              icon: Icon(
                hideCalendar
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_down,
              ),
            )
          ],
        ),
        if (hideCalendar == false) ...[
          BlocBuilder<ProgramBlocRead, BlocStateRead<ProgramModel>>(
            builder: (context, state) {
              return state.maybeWhen(
                success: (_, filteredPrograms, __) {
                  return SizedBox(
                    height: 400.h,
                    child: calendar(filteredPrograms),
                  );
                },
                failure: (message) => ErrorAlert(message),
                orElse: () {
                  final fakePrograms =
                      List.generate(10, (index) => ProgramModel.fake());
                  return SizedBox(
                    height: 400.h,
                    child: Skeletonizer(
                      child: calendar(fakePrograms),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ],
    );
  }

  Widget _buildListProgram(
    BuildContext context,
  ) {
    return Column(
      children: [
        Row(
          children: [
            TitleSmall(context.str?.programs),
            IconButton(
              onPressed: () =>
                  setState(() => hideListProgram = !hideListProgram),
              icon: Icon(
                hideListProgram
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_down,
              ),
            )
          ],
        ),
        if (hideListProgram == false) ...[
          BlocBuilder<ProgramBlocRead, BlocStateRead<ProgramModel>>(
            builder: (context, state) {
              return state.maybeWhen(
                success: (_, filteredPrograms, __) {
                  if (filteredPrograms.isEmpty) {
                    return SizedBox(
                      height: 400.h,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                context.str?.clubDoesntHaveAnyProgram(
                                        context.clubWatch?.name) ??
                                    '${context.clubWatch?.name} doesn\'t have a program yet',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                style: ButtonStyle(
                                  textStyle: WidgetStateProperty.all<TextStyle>(
                                    const TextStyle(color: Colors.blue),
                                  ),
                                ),
                                onPressed: context.clubRead != null
                                    ? () {
                                        context.read<ProgramBlocRead>().add(
                                              BlocEventRead.get(
                                                  id: context.clubRead?.id),
                                            );
                                      }
                                    : null,
                                child: Text(context.str?.reload ?? 'Reload'),
                              ),
                            ),
                            Gap(16.h),
                          ],
                        ),
                      ),
                    );
                  }
                  return SizedBox(
                    height: 0.71.sh,
                    child: ListViewBuilder(
                      items: filteredPrograms,
                      itemBuilder: (context, index, program) =>
                          _buildProgramItem(
                        context,
                        program,
                        program == filteredPrograms.last,
                      ),
                    ),
                  );
                },
                failure: (message) => ErrorAlert(message),
                orElse: () {
                  final fakePrograms =
                      List.generate(10, (index) => ProgramModel.fake());
                  return SizedBox(
                    height: 0.71.sh,
                    child: ListViewBuilder(
                      items: fakePrograms,
                      itemBuilder: (context, index, program) => Skeletonizer(
                        child: _buildProgramItem(
                          context,
                          program,
                          program == fakePrograms.last,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ],
    );
  }

  Widget _buildProgramItem(
    BuildContext context,
    ProgramModel program,
    bool isLast,
  ) {
    void onTap() {
      context.read<ProgramBlocRead>().add(
            BlocEventRead.select(program),
          );
      context.router.push(
        DetailProgramRoute(id: program.id),
      );
    }

    return ListViewBuilderTile(
      titleText: program.name,
      subtitleText: program.startDate.toString(),
      imageUrl: program.media?.url,
      onTap: onTap,
      trailing: MoonButton.icon(
        buttonSize: MoonButtonSize.xs,
        icon: const Icon(MoonIcons.controls_chevron_right_24_light),
        onTap: onTap,
      ),
    );
  }
}
