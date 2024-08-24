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

@RoutePage()
class ListProgramScreen extends StatelessWidget {
  const ListProgramScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final clubBloc = context.watch<ClubBloc>();
    final club = clubBloc.state.maybeWhen(
      loaded: (_, __, selectedClub) => selectedClub,
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
          floatingActionButton: showScrollToTopButton
              ? FloatingActionButton(
                  onPressed: () {
                    scroll.animateTo(
                      0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const Icon(Icons.arrow_upward),
                )
              : null,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                Gap(8.h),
                _buildHeader(context, search),
                Gap(16.h),
                _buildListProgram(context, scroll)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, SearchController search) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleSmall(context.str?.program),
        MySearchBar(
          width: 180.w,
          height: 32.h,
          controller: search,
          hintText:
              '${context.str?.search} ${context.str?.program.toLowerCase()} ...',
          onChanged: (value) {
            if (value == null) return;
            context.read<ClubBloc>().add(
                  ClubEvent.filterClubs(value),
                );
          },
          trailing: MoonButton.icon(
            buttonSize: MoonButtonSize.xs,
            icon: const Icon(MoonIcons.controls_close_24_light),
            onTap: () {
              search.clear();
              context.read<ClubBloc>().add(
                    const ClubEvent.filterClubs(''),
                  );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildListProgram(
    BuildContext context,
    ScrollController scrollController,
  ) {
    final clubBloc = context.watch<ClubBloc>();
    final club = clubBloc.state.maybeWhen(
      loaded: (_, __, selectedClub) => selectedClub,
      orElse: () => ClubModel.fake(),
    );
    return BlocBuilder<ProgramBloc, ProgramState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (_, filteredPrograms, __) {
            if (filteredPrograms.isEmpty) {
              return Expanded(
                child: Column(
                  children: [
                    Spacer(),
                    ErrorAlert(
                      '${club?.name} doesn\'t had program yet',
                      onRetry: () {
                        if (club != null) {
                          context.read<ProgramBloc>().add(
                                ProgramEvent.getPrograms(
                                  GetAllProgramParams(clubId: club.id),
                                ),
                              );
                        }
                      },
                    ),
                    Gap(16.h),
                  ],
                ),
              );
            }
            return ListViewBuilder(
              items: filteredPrograms,
              scrollController: scrollController,
              height: 0.71.sh,
              itemBuilder: (context, program) => _buildProgramItem(
                context,
                program,
                program == filteredPrograms.last,
              ),
            );
          },
          failure: (message) => ErrorAlert(message),
          orElse: () {
            final fakePrograms =
                List.generate(10, (index) => ProgramModel.fake());
            return ListViewBuilder(
              scrollController: scrollController,
              height: 0.71.sh,
              items: fakePrograms,
              itemBuilder: (context, program) => Skeletonizer(
                child: _buildProgramItem(
                  context,
                  program,
                  program == fakePrograms.last,
                ),
              ),
            );
          },
        );
      },
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
