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

class _ListProgramScreenState extends State<ListProgramScreen> {
  bool hideCalendar = false, hideListProgram = false;

  @override
  Widget build(BuildContext context) {
    final clubBloc = context.watch<ClubBlocRead>();
    final club = clubBloc.state.maybeWhen(
      success: (_, __, selectedClub) => selectedClub,
      orElse: () => ClubModel.fake(),
    );

    return ParentWithSearchAndScrollController(
      builder: (context, search, scroll, showScrollToTopButton) {
        return Parent(
          appBar: AppBar(
            title: TitleLarge(club?.name),
            actions: [
              MoonButton.icon(
                icon: const Icon(MoonIcons.generic_info_24_light),
                onTap: () {},
              ),
            ],
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              BackTopButton(
                show: showScrollToTopButton,
                onPressed: () {
                  scroll.animateTo(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Gap(8.h),
              FloatingActionButton.extended(
                heroTag: 'new_program_button_$hashCode',
                onPressed: () {
                  final nonNullClub = club ?? ClubModel.fake();
                  context.router.push(
                    UpsertProgramRoute(club: nonNullClub),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('New Program'),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: SingleChildScrollView(
              controller: scroll,
              child: Column(
                children: [
                  Gap(8.h),
                  _buildHeader(context, search),
                  Gap(16.h),
                  _buildCalendar(context),
                  _buildListProgram(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, SearchController search) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MySearchBar(
          width: 325.w,
          height: 32.h,
          controller: search,
          hintText:
              '${context.str?.search} ${context.str?.program.toLowerCase()} ...',
          onChanged: (value) {
            if (value == null) return;
            context.read<ClubBlocRead>().add(
                  BlocEventRead.filter(value),
                );
          },
          trailing: MoonButton.icon(
            buttonSize: MoonButtonSize.xs,
            icon: const Icon(MoonIcons.controls_close_24_light),
            onTap: () {
              search.clear();
              context.read<ClubBlocRead>().add(
                    const BlocEventRead.filter(''),
                  );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCalendar(BuildContext context) {
    Widget _calendar() {
      return SfCalendar(
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
          showAgenda: true,
          agendaItemHeight: 70,
        ),
        initialSelectedDate: DateTime.now(),
        onTap: (calendarTapDetails) {
          final len = calendarTapDetails.appointments?.length ?? 0;

          final el = calendarTapDetails.targetElement;
          if (el == CalendarElement.appointment && len == 1) {
            final program = calendarTapDetails.appointments?.first;
            // Handle the appointment tap
          }
        },
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
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
                    child: _calendar(),
                  );
                },
                failure: (message) => ErrorAlert(message),
                orElse: () {
                  return SizedBox(
                    height: 400.h,
                    child: Skeletonizer(
                      child: _calendar(),
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
    final clubBloc = context.watch<ClubBlocRead>();
    final club = clubBloc.state.maybeWhen(
      success: (_, __, selectedClub) => selectedClub,
      orElse: () => ClubModel.fake(),
    );

    return Column(
      children: [
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
                              '${club?.name} doesn\'t have a program yet',
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
                              onPressed: club != null
                                  ? () {
                                      context.read<ProgramBlocRead>().add(
                                            BlocEventRead.get(id: club.id),
                                          );
                                    }
                                  : null,
                              child: const Text("Reload"),
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
                    itemBuilder: (context, program) => _buildProgramItem(
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
                    itemBuilder: (context, program) => Skeletonizer(
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
    );
  }

  Widget _buildProgramItem(
    BuildContext context,
    ProgramModel program,
    bool isLast,
  ) {
    void onTap() => context.router.push(
          DetailProgramRoute(programId: program.id),
        );

    return ListViewBuilderTile(
      titleText: program.name,
      subtitleText: program.startDate.toString(),
      imageUrl: program.media?.url,
      margin: EdgeInsets.only(bottom: isLast ? 0 : 8.h),
      onTap: onTap,
      trailing: MoonButton.icon(
        buttonSize: MoonButtonSize.xs,
        icon: const Icon(MoonIcons.controls_chevron_right_24_light),
        onTap: onTap,
      ),
    );
  }
}
