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
class AthleteListTacticalScreen extends StatefulWidget {
  const AthleteListTacticalScreen({super.key});

  @override
  State<AthleteListTacticalScreen> createState() =>
      _AthleteListTacticalScreenState();
}

class _AthleteListTacticalScreenState extends State<AthleteListTacticalScreen> {
  late ScrollController _scrollController;
  late TextEditingController _searchController;
  bool showScrollToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _searchController = TextEditingController();
    _scrollController.addListener(_scrollListener);

    final params = GetAllTacticalParams(clubId: 1);

    context.read<AthleteTacticalBloc>().add(
          AthleteTacticalEvent.getTacticals(params),
        );
  }

  void _scrollListener() {
    final height = MediaQuery.of(context).size.height;
    final offset = _scrollController.offset;
    final shouldShowButton = offset > (height / 3);

    if (showScrollToTopButton != shouldShowButton) {
      setState(() {
        showScrollToTopButton = shouldShowButton;
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
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _buildTopBackground(context),
          _buildTitle(context),
          _buildListTactical(context),
          SliverToBoxAdapter(child: Gap(64.h)),
        ],
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

  Widget _buildTopBackground(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 120.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Palette.BG_LEFT2, Palette.BG_RIGHT2],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 44.h, left: 8, right: 8, bottom: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                width: 312.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(64.r),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withOpacity(0.25),
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TitleLarge(
                      'Tactical',
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
            ],
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
            MySearchBar(
              width: 312.w,
              height: 36.h,
              controller: _searchController,
              hintText:
                  '${context.str?.search} ${context.str?.tactical.toLowerCase()} ...',
              onChanged: (value) {
                context.read<AthleteTacticalBloc>().add(
                      AthleteTacticalEvent.filterTacticals(value ?? ''),
                    );
              },
              trailing: MoonButton.icon(
                buttonSize: MoonButtonSize.xs,
                icon: const Icon(MoonIcons.controls_close_24_light),
                onTap: () {
                  _searchController.clear();
                  context.read<AthleteTacticalBloc>().add(
                        const AthleteTacticalEvent.filterTacticals(''),
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTactical(BuildContext context) {
    return BlocBuilder<AthleteTacticalBloc, AthleteTacticalState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            final fakeTacticals = List.generate(
              5,
              (index) => TacticalModel.fake(),
            );
            return SliverToBoxAdapter(
              child: ColumnList<TacticalModel>(
                items: fakeTacticals,
                itemBuilder: (tactical) => Skeletonizer(
                  child: ColumnListTile(
                    hashCode: tactical.hashCode,
                    titleText: tactical.name,
                    subtitleText: tactical.description,
                    leading: Icon(Icons.circle, size: 36.h),
                    trailing: MoonChip(
                      chipSize: MoonChipSize.sm,
                      borderRadius: BorderRadius.circular(84.r),
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.2),
                      label: const BodyMedium('View'),
                      trailing: const Icon(MoonIcons.arrows_right_24_light),
                    ),
                  ),
                ),
              ),
            );
          },
          loaded: (data) {
            return SliverToBoxAdapter(
              child: ColumnList<TacticalModel>(
                items: data.filteredTacticals,
                itemBuilder: (tactical) => ColumnListTile(
                  hashCode: tactical.hashCode,
                  titleText: tactical.name,
                  subtitleText: tactical.description,
                  imageUrl: tactical.media?.url,
                  trailing: MoonChip(
                    chipSize: MoonChipSize.sm,
                    borderRadius: BorderRadius.circular(84.r),
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.2),
                    label: const BodyMedium('View'),
                    trailing: const Icon(MoonIcons.arrows_right_24_light),
                  ),
                  onTap: () => context.router.push(
                    AthleteDetailTacticalRoute(id: tactical.id),
                  ),
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
              child: Container(
                constraints: BoxConstraints(
                  minHeight: 500.h,
                ),
                child: const Center(
                  child: BodyLarge('No tacticals available'),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
