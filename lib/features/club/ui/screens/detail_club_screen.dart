import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class DetailClubScreen extends StatefulWidget {
  const DetailClubScreen({
    super.key,
  });

  @override
  State<DetailClubScreen> createState() => _DetailClubScreenState();
}

class _DetailClubScreenState extends BaseState<DetailClubScreen> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: TitleMedium(context.str?.clubDetail(context.clubWatch?.name)),
        actions: [
          MoonButton.icon(
            icon: const Icon(MoonIcons.generic_edit_24_light),
            onTap: () {
              context.router.push(const UpsertClubRoute());
            },
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showScrollToTopButton) ...[
            FloatingActionButton(
              onPressed: scrollToTop,
              child: const Icon(Icons.arrow_upward),
            ),
          ],
          FloatingActionButton.extended(
            heroTag: 'new_member_button_$hashCode',
            label: TitleSmall(context.str?.addMember),
            icon: const Icon(MoonIcons.generic_plus_24_light),
            onPressed: () {
              context.router.push(const AddMemberRoute());
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleSmall(context.str?.clubOverview(context.clubWatch?.name)),
              Gap(4.h),
              BlocBuilder<ClubMembersCubit, ClubMembersState>(
                builder: (context, state) {
                  return ClubOverviewCard(
                    clubName: context.clubWatch?.name,
                    membersCount: state.members.length,
                    programsCount: context.clubWatch?.programCount,
                    examsCount: context.clubWatch?.examCount,
                    tacticalCount: context.clubWatch?.tacticalCount,
                  );
                },
              ),
              Gap(16.h),
              Row(
                children: [
                  TitleSmall(context.str?.clubMembers(context.clubWatch?.name)),
                  Gap(32.w),
                  Expanded(
                    child: MySearchBar(
                      onChanged: (value) {
                        if (value == null) return;
                        context.read<ClubMembersCubit>().filterMembers(value);
                      },
                      height: 32.h,
                      controller: searchController,
                      trailing: MoonButton.icon(
                        buttonSize: MoonButtonSize.xs,
                        icon: const Icon(MoonIcons.controls_close_24_light),
                        onTap: () {
                          clearSearch();
                          context.read<ClubMembersCubit>().filterMembers('');
                        },
                      ),
                    ),
                  )
                ],
              ),
              Gap(8.h),
              BlocBuilder<ClubMembersCubit, ClubMembersState>(
                builder: (context, state) {
                  return ListViewBuilder<UserModel>(
                    items: state.filteredMembers,
                    height: 0.44.sh,
                    scrollController: scrollController,
                    itemBuilder: (context, index, item) {
                      return EightCard(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.w,
                          horizontal: 16.w,
                        ),
                        margin: EdgeInsets.all(4.w),
                        child: Row(
                          children: [
                            CachedNetworkImage(
                              imageUrl: item.image,
                              width: 36.h,
                              height: 36.h,
                              imageBuilder: (context, imageProvider) {
                                return CircleAvatar(
                                  backgroundImage: imageProvider,
                                );
                              },
                            ),
                            Gap(8.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleSmall(item.name),
                                Gap(4.h),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.w, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: context.moonColors?.frieza
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(32.w),
                                  ),
                                  child: BodyMedium(
                                    item.role.name,
                                    color: context.moonColors?.frieza,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            _removeMemberButton(context, item),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              Gap(16.h),
              TitleSmall(context.str?.clubAbout(context.clubWatch?.name)),
              ListViewBuilderTile(
                imageUrl: context.clubWatch?.media?.url,
                titleText: context.clubWatch?.name,
                subtitleText: context.clubWatch?.description,
              ),
              Gap(16.h),
              _leaveClubButton(context),
              Gap(128.h),
            ],
          ),
        ),
      ),
    );
  }

  MoonFilledButton _leaveClubButton(BuildContext context) {
    return MoonFilledButton(
      width: double.infinity,
      label: TitleSmall(context.str?.leaveClub),
      trailing: const Icon(
        MoonIcons.generic_log_out_24_light,
      ),
      backgroundColor: Colors.red,
      onTap: () async {
        final res = await showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: TitleSmall(context.str?.leaveClub),
              content: TitleSmall(
                context.str
                    ?.areYouSureYouWantToLeaveClubName(context.clubWatch?.name),
              ),
              actions: [
                TextButton(
                  onPressed: () async {
                    await context
                        .read<ClubMembersCubit>()
                        .leaveClub(clubId: context.clubRead?.id ?? 0);
                    if (ctx.mounted) {
                      Navigator.pop(ctx, true);
                    }
                  },
                  child: Text(context.str?.yes ?? 'Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(ctx, false);
                  },
                  child: Text(context.str?.no ?? 'No'),
                ),
              ],
            );
          },
        );
        if (res == true) {
          if (context.mounted) {
            context.read<ClubBlocRead>().add(const BlocReadEvent.get());
            context.router.replace(
              const ListClubRoute(),
            );
          }
        }
      },
    );
  }

  MoonButton _removeMemberButton(BuildContext context, UserModel item) {
    return MoonButton.icon(
      icon: const Icon(
        MoonIcons.generic_delete_24_light,
        color: Colors.red,
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (ctx) {
            return BlocProvider.value(
              value: context.read<ClubMembersCubit>(),
              child: AlertDialog(
                title: TitleMedium(context.str?.kickMember),
                content: TitleMedium(
                  context.str?.areYouSureYouWantToKickUsernameFromClubName(
                    item.name,
                    context.clubWatch?.name,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.read<ClubMembersCubit>().kickMember(
                          clubId: context.clubRead?.id ?? 0, userId: item.id);
                      Navigator.pop(ctx);
                    },
                    child: Text(context.str?.yes ?? 'Yes'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: Text(context.str?.no ?? 'No'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
