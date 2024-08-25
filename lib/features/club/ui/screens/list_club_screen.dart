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
class ListClubScreen extends StatelessWidget {
  const ListClubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userBloc = context.watch<UserBloc>();
    final user =
        userBloc.state.whenOrNull(success: (user, _) => user) ?? UserModel();
    return ParentWithSearchAndScrollController(
      onInit: (search, scroll) => context.read<ClubBlocRead>().add(
            // const ClubEvent.selectClub(null),
            const BlocEventRead.clear(),
          ),
      builder: (context, search, scroll, showScrollToTopButton) {
        return Parent(
          appBar: AppBar(
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
            actions: [
              MoonButton.icon(
                icon: const Icon(MoonIcons.notifications_bell_24_light),
                onTap: () {},
              ),
            ],
          ),
          drawer: MoonDrawer(
            width: MediaQuery.of(context).size.width * 0.7,
            child: SafeArea(
              child: Column(
                children: [
                  Row(children: [
                    const Spacer(),
                    MoonButton.icon(
                      icon: const Icon(MoonIcons.controls_close_24_light),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ]),
                  Gap(16.h),
                  CircleAvatar(
                    radius: 40.r,
                    backgroundImage: NetworkImage(user.image),
                  ),
                  Gap(8.h),
                  TitleMedium(user.name),
                  Gap(8.h),
                  BodySmall(user.email),
                  Gap(16.h),
                  BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.mapOrNull(
                        unauthenticated: (message) {
                          context.replaceRoute(const SplashRoute());
                        },
                      );
                    },
                    child: MoonFilledButton(
                      label: BodySmall(context.str?.logout),
                      onTap: () {
                        context.read<AuthBloc>().add(const AuthEvent.signOut());
                      },
                    ),
                  ),
                ],
              ),
            ),
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
              if (user.role == UserRole.athlete) ...[
                Gap(8.h),
                FloatingActionButton.extended(
                  heroTag: 'new_club_button_$hashCode',
                  onPressed: () {
                    context.router.push(const UpsertClubRoute());
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('New Club'),
                ),
              ],
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                Gap(8.h),
                _buildHeader(context, search),
                Gap(16.h),
                _buildListClub(context, scroll),
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
        TitleSmall(context.str?.myClub),
        MySearchBar(
          width: 180.w,
          height: 32.h,
          controller: search,
          hintText:
              '${context.str?.search} ${context.str?.club.toLowerCase()} ...',
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

  Widget _buildListClub(
    BuildContext context,
    ScrollController scrollController,
  ) {
    return BlocBuilder<ClubBlocRead, BlocStateRead<ClubModel>>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (_, filteredClubs, __) {
            return ListViewBuilder<ClubModel>(
              items: filteredClubs,
              scrollController: scrollController,
              height: 0.8.sh,
              itemBuilder: (context, club) => _buildClubItem(
                context,
                club,
                club == filteredClubs.last,
              ),
            );
          },
          failure: (message) => BodyLarge(message),
          orElse: () {
            final fakeClubs =
                List.generate(5, (index) => ClubModel.fake()).toList();
            return ListViewBuilder<ClubModel>(
              scrollController: scrollController,
              height: 0.8.sh,
              items: fakeClubs,
              itemBuilder: (context, club) => Skeletonizer(
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
    ClubModel club,
    bool isLast,
  ) {
    void onTap() {
      context.read<ClubBlocRead>().add(
            BlocEventRead.select(club),
          );
      context.router.push(
        ClubShellRoute(id: club.id),
      );
    }

    return ListViewBuilderTile(
      titleText: club.name,
      subtitleText: club.type.name,
      imageUrl: club.media?.url,
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
