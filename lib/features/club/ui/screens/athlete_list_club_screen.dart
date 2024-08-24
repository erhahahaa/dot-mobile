import 'package:auto_route/auto_route.dart';
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
class AthleteListClubScreen extends StatelessWidget {
  const AthleteListClubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ParentWithSearchAndScrollController(
      onInit: (search, scroll) {
        context.read<AthleteClubBloc>().add(
              const AthleteClubEvent.getClubs(),
            );
      },
      builder: (context, search, scroll, showScrollToTopButton) {
        return Parent(
          floatingActionButton: showScrollToTopButton
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        scroll.animateTo(
                          0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const Icon(Icons.arrow_upward),
                    ),
                    Gap(64.h),
                  ],
                )
              : null,
          body: CustomScrollView(
            controller: scroll,
            slivers: [
              _buildAppBar(),
              _buildTitle(context, search),
              _buildListClub(context),
              SliverToBoxAdapter(child: Gap(64.h)),
            ],
          ),
        );
      },
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      expandedHeight: 170.h,
      collapsedHeight: 80.h,
      flexibleSpace: Container(
        width: double.infinity,
        height: 210.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Palette.BG_LEFT, Palette.BG_RIGHT],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
        child: SafeArea(
          child: Center(
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Skeletonizer(
                    child: UserCard(user: UserModel()),
                  ),
                  success: (user, fcmToken) {
                    return UserCard(user: user);
                  },
                  orElse: () => const BodyLarge('Something went wrong'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, SearchController search) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          top: 24.h,
          bottom: 8.h,
          right: 16.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleLarge(context.str?.myClub),
            MySearchBar(
              width: 180.w,
              height: 36.h,
              controller: search,
              hintText:
                  '${context.str?.search} ${context.str?.club.toLowerCase()} ...',
              onChanged: (value) {
                if (value == null) return;
                context.read<AthleteClubBloc>().add(
                      AthleteClubEvent.filterClubs(value),
                    );
              },
              trailing: MoonButton.icon(
                buttonSize: MoonButtonSize.xs,
                icon: const Icon(MoonIcons.controls_close_24_light),
                onTap: () {
                  search.clear();
                  context.read<AthleteClubBloc>().add(
                        const AthleteClubEvent.filterClubs(''),
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListClub(BuildContext context) {
    return BlocBuilder<AthleteClubBloc, AthleteClubState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (_, filteredClubs) {
            return SliverToBoxAdapter(
              child: ColumnList<ClubModel>(
                items: filteredClubs,
                itemBuilder: _buildClubListTile,
              ),
            );
          },
          failure: (message) {
            return SliverToBoxAdapter(
              child: BodyLarge(message),
            );
          },
          orElse: () {
            final fakeClubs = List.generate(
              5,
              (index) => ClubModel.fake(),
            ).toList();
            return SliverToBoxAdapter(
              child: ContainerWrapper(
                child: ColumnList<ClubModel>(
                  items: fakeClubs,
                  itemBuilder: (context, club) => Skeletonizer(
                    child: _buildClubListTile(context, club),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildClubListTile(BuildContext context, ClubModel club) {
    return ColumnListTile(
      titleText: club.name,
      subtitleText: club.type.name,
      imageUrl: club.media?.url,
      trailing: const Icon(MoonIcons.controls_chevron_right_24_light),
    );
  }
}
