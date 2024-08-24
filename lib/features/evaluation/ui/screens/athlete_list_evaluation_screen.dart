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
class AthleteListEvaluationScreen extends StatelessWidget {
  const AthleteListEvaluationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final clubBloc = context.watch<AthleteClubBloc>();
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
        TitleSmall('Evaluation'),
        MySearchBar(
          width: 180.w,
          height: 32.h,
          controller: search,
          hintText: '${context.str?.search} ${'Evaluation'.toLowerCase()} ...',
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
    );
  }

  Widget _buildListEvaluation(
    BuildContext context,
    ScrollController scrollController,
  ) {
    final clubBloc = context.watch<AthleteClubBloc>();
    final club = clubBloc.state.maybeWhen(
      loaded: (_, __, selectedClub) => selectedClub,
      orElse: () => ClubModel.fake(),
    );
    return BlocBuilder<AthleteEvaluationBloc, AthleteEvaluationState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (_, filteredEvaluations, __) {
            if (filteredEvaluations.isEmpty) {
              return Expanded(
                child: Column(
                  children: [
                    Spacer(),
                    ErrorAlert(
                      '${club?.name} doesn\'t had evaluation yet',
                      onRetry: () {
                        if (club != null) {
                          context.read<AthleteEvaluationBloc>().add(
                                AthleteEvaluationEvent.getEvaluations(
                                  GetAllEvaluationParams(clubId: club.id),
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
              items: filteredEvaluations,
              scrollController: scrollController,
              height: 0.71.sh,
              itemBuilder: (context, evaluation) => _buildEvaluationItem(
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
              itemBuilder: (context, evaluation) => Skeletonizer(
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
          AthleteDetailEvaluationRoute(evaluationId: evaluation.id),
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
