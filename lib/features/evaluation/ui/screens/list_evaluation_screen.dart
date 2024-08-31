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
class ListEvaluationScreen extends StatefulWidget {
  const ListEvaluationScreen({
    super.key,
  });

  @override
  State<ListEvaluationScreen> createState() => _ListEvaluationScreenState();
}

class _ListEvaluationScreenState extends State<ListEvaluationScreen> {
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
                heroTag: 'new_evaluation_button_$hashCode',
                onPressed: () {
                  context.router.push(
                    const UpsertEvaluationRoute(),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('New Evaluation'),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                Gap(8.h),
                _buildHeader(context, search),
                Gap(16.h),
                _buildListEvaluation(context, scroll)
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
        MySearchBar(
          width: 325.w,
          height: 32.h,
          controller: search,
          hintText: '${context.str?.search} ${'Evaluation'.toLowerCase()} ...',
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

  Widget _buildListEvaluation(
    BuildContext context,
    ScrollController scrollController,
  ) {
    final clubBloc = context.watch<ClubBlocRead>();
    final club = clubBloc.state.maybeWhen(
      success: (_, __, selectedClub) => selectedClub,
      orElse: () => ClubModel.fake(),
    );
    return BlocBuilder<EvaluationBlocRead, BlocStateRead<EvaluationModel>>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (_, filteredEvaluations, __) {
            if (filteredEvaluations.isEmpty) {
              return SizedBox(
                height: 400.h,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          '${club?.name} doesn\'t have evaluation yet',
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
                                  context.read<EvaluationBlocRead>().add(
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
              items: filteredEvaluations,
              scrollController: scrollController,
              height: 0.71.sh,
              itemBuilder: (context, index, evaluation) => _buildEvaluationItem(
                context,
                evaluation,
                evaluation == filteredEvaluations.last,
              ),
            );
          },
          failure: (message) => ErrorAlert(message),
          orElse: () {
            final fakeEvaluations =
                List.generate(10, (index) => EvaluationModel.fake());
            return ListViewBuilder(
              scrollController: scrollController,
              height: 0.71.sh,
              items: fakeEvaluations,
              itemBuilder: (context, index, evaluation) => Skeletonizer(
                child: _buildEvaluationItem(
                  context,
                  evaluation,
                  evaluation == fakeEvaluations.last,
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildEvaluationItem(
    BuildContext context,
    EvaluationModel evaluation,
    bool isLast,
  ) {
    void onTap() => context.router.push(
          DetailEvaluationRoute(id: evaluation.id),
        );

    return ListViewBuilderTile(
      titleText: evaluation.exam?.title,
      subtitleText: evaluation.createdAt?.toIso8601String(),
      imageUrl: evaluation.exam?.media?.url,
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
