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
class ListClubScreen extends StatefulWidget {
  const ListClubScreen({super.key});

  @override
  State<ListClubScreen> createState() => _ListClubScreenState();
}

class _ListClubScreenState extends BaseState<ListClubScreen> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: _buildAppBar(),
      drawer: MoonDrawer(
        width: MediaQuery.of(context).size.width * 0.7,
        child: const ProfileScreen(),
      ),
      floatingActionButton: _buildFloatingActionButton(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<ClubBlocRead>().add(
                  const BlocReadEvent.get(),
                );
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Gap(8.h),
                _buildHeader(context),
                Gap(8.h),
                _buildListClub(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _buildFloatingActionButton(
    BuildContext context,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        BackTopButton(
          show: showScrollToTopButton,
          onPressed: () {
            scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
        ),
        Gap(8.h),
        FloatingActionButton.extended(
          heroTag: 'new_club_button_$hashCode',
          onPressed: () {
            final clubBloc = context.read<ClubBlocRead>();
            clubBloc.add(
              const BlocReadEvent.select(null),
            );
            final club = clubBloc.state.whenOrNull(
              success: (_, __, selected) => selected,
            );

            if (club != null) {
              Future.delayed(Durations.medium2, () {
                if (context.mounted) {
                  context.router.push(const UpsertClubRoute());
                }
              });
            } else {
              context.router.push(const UpsertClubRoute());
            }
          },
          icon: const Icon(Icons.add),
          label: Text(context.str?.newClub ?? 'New Club'),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: Row(
        children: [
          Builder(builder: (context) {
            return MoonButton.icon(
              icon: const Icon(MoonIcons.generic_menu_24_light),
              onTap: context.openDrawer,
            );
          }),
        ],
      ),
      centerTitle: true,
      title: const TitleMedium(AppConstants.APP_NAME),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleSmall(context.str?.myClubs),
        MySearchBar(
          width: 180.w,
          height: 32.h,
          controller: searchController,
          hintText:
              '${context.str?.search} ${context.str?.club.toLowerCase()} ...',
          onChanged: (value) {
            if (value == null) return;
            context.read<ClubBlocRead>().add(
                  BlocReadEvent.filter(value),
                );
          },
          trailing: MoonButton.icon(
            buttonSize: MoonButtonSize.xs,
            icon: const Icon(MoonIcons.controls_close_24_light),
            onTap: () {
              searchController.clear();
              context.read<ClubBlocRead>().add(
                    const BlocReadEvent.filter(''),
                  );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildListClub(BuildContext context) {
    return BlocBuilder<ClubBlocRead, BlocReadState<ClubModel>>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (clubs, filteredClubs, __) {
            if (filteredClubs.isEmpty) {
              return ErrorAlert(
                  context.str?.clubWithNameNotFound(searchController.text));
            }
            if (clubs.isEmpty) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    context.str?.notJoinedAnyClubs ??
                        "There's no club created yet",
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          WidgetStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Text(context.str?.reload ?? "Reload"),
                  ),
                ],
              );
            }
            return ListViewBuilder<ClubModel>(
              items: filteredClubs,
              scrollController: scrollController,
              height: 0.8.sh,
              itemBuilder: (context, index, club) => _buildClubItem(
                context,
                club,
                club == filteredClubs.last,
              ),
            );
          },
          failure: (message) => ErrorAlert(message),
          orElse: () {
            final fakeClubs =
                List.generate(5, (index) => ClubModel.fake()).toList();
            return ListViewBuilder<ClubModel>(
              scrollController: scrollController,
              height: 0.8.sh,
              items: fakeClubs,
              itemBuilder: (context, index, club) => Skeletonizer(
                child: _buildClubItem(
                  context,
                  club,
                  club == fakeClubs.last,
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildClubItem(
    BuildContext context,
    ClubModel selectedClub,
    bool isLast,
  ) {
    void onTap() {
      context.read<ClubBlocRead>().add(
            BlocReadEvent.select(selectedClub),
          );
      context.router.push(
        ClubShellRoute(id: selectedClub.id),
      );
    }

    return ListViewBuilderTile(
      titleText: selectedClub.name,
      subtitleText: selectedClub.type,
      imageUrl: selectedClub.media?.url,
      onTap: onTap,
      trailing: MoonButton.icon(
        buttonSize: MoonButtonSize.xs,
        icon: const Icon(MoonIcons.controls_chevron_right_24_light),
        onTap: onTap,
      ),
    );
  }
}
