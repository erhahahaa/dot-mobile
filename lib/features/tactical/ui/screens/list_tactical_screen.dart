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
class ListTacticalScreen extends StatefulWidget {
  const ListTacticalScreen({super.key});

  @override
  State<ListTacticalScreen> createState() => _ListTacticalScreenState();
}

class _ListTacticalScreenState extends BaseState<ListTacticalScreen> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: _buildAppBar(),
      floatingActionButton:
          _buildFloatingActionBar(showScrollToTopButton, context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<TacticalBlocRead>().add(
                  BlocReadEvent.get(id: context.clubWatch?.id),
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
                _buildListTactical(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: TitleMedium(context.clubWatch?.name),
      actions: [
        MoonButton.icon(
          icon: const Icon(MoonIcons.generic_info_24_light),
          onTap: () {},
        ),
      ],
    );
  }

  Column _buildFloatingActionBar(
      bool showScrollToTopButton, BuildContext context) {
    return Column(
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
          heroTag: 'new_tactical_button_$hashCode',
          onPressed: () {
            final tacticalBloc = context.read<TacticalBlocRead>();
            tacticalBloc.add(
              const BlocReadEvent.select(null),
            );
            final tactical = tacticalBloc.state.whenOrNull(
              success: (_, __, selected) => selected,
            );

            if (tactical != null) {
              Future.delayed(Durations.medium2, () {
                if (context.mounted) {
                  context.router.push(const UpsertTacticalRoute());
                }
              });
            } else {
              context.router.push(const UpsertTacticalRoute());
            }
          },
          icon: const Icon(Icons.add),
          label: Text(context.str?.newTactic ?? 'New Tactic'),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MySearchBar(
          width: 325.w,
          height: 32.h,
          controller: searchController,
          hintText:
              '${context.str?.search} ${context.str?.tactic.toLowerCase()} ...',
          onChanged: (value) {
            if (value == null) return;
            context.read<TacticalBlocRead>().add(
                  BlocReadEvent.filter(value),
                );
          },
          trailing: MoonButton.icon(
            buttonSize: MoonButtonSize.xs,
            icon: const Icon(MoonIcons.controls_close_24_light),
            onTap: () {
              clearSearch();
              context.read<TacticalBlocRead>().add(
                    const BlocReadEvent.filter(''),
                  );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildListTactical(BuildContext context) {
    return BlocBuilder<TacticalBlocRead, BlocReadState<TacticalModel>>(
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
                          context.str?.clubDoesntHaveAnyTactic(
                                  context.clubWatch?.name) ??
                              '${context.clubWatch?.name} doesn\'t have tactical yet',
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
                                  context.read<TacticalBlocRead>().add(
                                        BlocReadEvent.get(
                                            id: context.clubRead?.id),
                                      );
                                }
                              : null,
                          child: Text(context.str?.reload ?? "Reload"),
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
              itemBuilder: (context, index, tactical) =>
                  _buildTacticalItem(context, tactical),
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
              itemBuilder: (context, index, tactical) => Skeletonizer(
                child: _buildTacticalItem(context, tactical),
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
  ) {
    void onTap() {
      context.read<TacticalBlocRead>().add(
            BlocReadEvent.select(tactical),
          );
      context.router.push(
        DetailTacticalRoute(id: tactical.id),
      );
    }

    return ListViewBuilderTile(
      titleText: tactical.name,
      imageUrl: tactical.media?.url,
      subtitle: tactical.isLive
          ? const MoonChip(label: BodySmall('live'))
          : Container(),
      onTap: onTap,
      trailing: MoonButton.icon(
        buttonSize: MoonButtonSize.xs,
        icon: const Icon(MoonIcons.controls_chevron_right_24_light),
        onTap: onTap,
      ),
    );
  }
}
