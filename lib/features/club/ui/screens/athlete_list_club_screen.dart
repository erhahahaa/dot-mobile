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
class AthleteListClubScreen extends StatefulWidget {
  const AthleteListClubScreen({super.key});

  @override
  State<AthleteListClubScreen> createState() => _AthleteListClubScreenState();
}

class _AthleteListClubScreenState extends State<AthleteListClubScreen> {
  late ScrollController _scrollController;
  late TextEditingController _searchController;
  bool showScrollToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _searchController = TextEditingController();
    _scrollController.addListener(_scrollListener);
    context.read<AthleteClubBloc>().add(
          const AthleteClubEvent.getClubs(),
        );
  }

  void _scrollListener() {
    final height = MediaQuery.of(context).size.height;
    if (_scrollController.offset > (height / 3) && !showScrollToTopButton) {
      setState(() {
        showScrollToTopButton = true;
      });
    } else if (_scrollController.offset <= (height / 3) &&
        showScrollToTopButton) {
      setState(() {
        showScrollToTopButton = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Parent(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            _buildAppBar(),
            _buildTitle(context),
            _buildListClub(context),
            SliverToBoxAdapter(child: Gap(64.h)),
          ],
        ),
      ),
      floatingActionButton: showScrollToTopButton
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    _scrollController.animateTo(
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
          gradient: LinearGradient(
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
                  orElse: () => BodyLarge('Something went wrong'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
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
            TitleLarge(
              context.str?.myClub,
            ),
            MySearchBar(
              width: 180.w,
              height: 36.h,
              controller: _searchController,
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
                icon: Icon(MoonIcons.controls_close_24_light),
                onTap: () {
                  _searchController.clear();
                  context.read<AthleteClubBloc>().add(
                        AthleteClubEvent.filterClubs(''),
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
          loading: () {
            final fakeClubs = List.generate(
              5,
              (index) => ClubModel.fake(),
            ).toList();
            return SliverToBoxAdapter(
              child: ContainerWrapper(
                child: ColumnList<ClubModel>(
                  items: fakeClubs,
                  itemBuilder: (club) => Skeletonizer(
                    child: ColumnListTile(
                      titleText: club.name,
                      subtitleText: club.description,
                      leading: Icon(Icons.circle, size: 36.h),
                      trailing: MoonChip(
                        chipSize: MoonChipSize.sm,
                        borderRadius: BorderRadius.circular(84.r),
                        backgroundColor:
                            context.moonColors?.frieza.withOpacity(0.2),
                        label: BodyMedium('View'),
                        trailing: Icon(MoonIcons.arrows_right_24_light),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          loaded: (_, filteredClubs) {
            return SliverToBoxAdapter(
              child: ColumnList<ClubModel>(
                items: filteredClubs,
                itemBuilder: (club) => ColumnListTile(
                  titleText: club.name,
                  subtitleText: club.description,
                  imageUrl: club.media?.url,
                  trailing: MoonChip(
                    chipSize: MoonChipSize.sm,
                    borderRadius: BorderRadius.circular(84.r),
                    backgroundColor:
                        context.moonColors?.frieza.withOpacity(0.2),
                    label: BodyMedium('View'),
                    trailing: Icon(MoonIcons.arrows_right_24_light),
                    onTap: () {
                      // context.router.push(
                      //   AthleteDetailClubRoute(id: club.id),
                      // );
                    },
                  ),
                  onTap: () {
                    context.router.push(
                      AthleteListProgramRoute(clubId: club.id),
                    );
                  },
                ),
              ),
            );
          },
          failure: (message) {
            return SliverToBoxAdapter(
              child: BodyLarge(message),
            );
          },
          orElse: () {
            return SliverToBoxAdapter(
              child: BodyLarge('An error occured'),
            );
          },
        );
      },
    );
  }
}
