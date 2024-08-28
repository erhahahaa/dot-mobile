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
class ListTacticalScreen extends StatelessWidget {
  const ListTacticalScreen({
    super.key,
  });

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
                heroTag: 'new_tactical_button_$hashCode',
                onPressed: () {
                  context.router.push(
                    const UpsertTacticalRoute(),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('New Tactical'),
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
                  _buildListTactical(context, scroll),
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
              '${context.str?.search} ${context.str?.tactical.toLowerCase()} ...',
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

  Widget _buildListTactical(
    BuildContext context,
    ScrollController scrollController,
  ) {
    final clubBloc = context.watch<ClubBlocRead>();
    final club = clubBloc.state.maybeWhen(
      success: (_, __, selectedClub) => selectedClub,
      orElse: () => ClubModel.fake(),
    );
    return BlocBuilder<TacticalBlocRead, BlocStateRead<TacticalModel>>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (_, filteredTacticals, __) {
            if (filteredTacticals.isEmpty) {
              return SizedBox(
                height: 400.h,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          '${club?.name} doesn\'t have tactical yet',
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
                                  context.read<TacticalBlocRead>().add(
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
            return ListViewBuilder(
              items: filteredTacticals,
              scrollController: scrollController,
              height: 0.71.sh,
              itemBuilder: (context, tactical) => _buildTacticalItem(
                context,
                tactical,
                tactical == filteredTacticals.last,
              ),
            );
          },
          failure: (message) => ErrorAlert(message),
          orElse: () {
            final fakeTacticals =
                List.generate(10, (index) => TacticalModel.fake());
            return ListViewBuilder(
              scrollController: scrollController,
              height: 0.71.sh,
              items: fakeTacticals,
              itemBuilder: (context, tactical) => Skeletonizer(
                child: _buildTacticalItem(
                  context,
                  tactical,
                  tactical == fakeTacticals.last,
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildTacticalItem(
    BuildContext context,
    TacticalModel tactical,
    bool isLast,
  ) {
    void onTap() => context.router.push(
          DetailTacticalRoute(id: tactical.id),
        );

    return ListViewBuilderTile(
      titleText: tactical.name,
      imageUrl: tactical.media?.url,
      subtitle: tactical.isLive
          ? MoonChip(
              label: BodySmall(
                'live',
              ),
            )
          : Container(),
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
