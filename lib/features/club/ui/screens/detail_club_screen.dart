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

class _DetailClubScreenState extends State<DetailClubScreen> {
  ClubModel? _club;
  @override
  void initState() {
    super.initState();

    final clubBloc = context.read<ClubBlocRead>();
    _club = clubBloc.state.whenOrNull(
      success: (_, __, selectedClub) => selectedClub,
    );
    context.read<ClubMembersCubit>().getMembers(clubId: _club?.id ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return ParentWithSearchAndScrollController(
      builder: (child, search, scroll, showScrollToTopButton) {
        return Parent(
          appBar: AppBar(
            title: TitleMedium('${_club?.name} Detail'),
            actions: [
              MoonButton.icon(
                icon: const Icon(MoonIcons.generic_edit_24_light),
                onTap: () {
                  context.router
                      .push(UpsertClubRoute(onUpserted: (ClubModel res) {
                    setState(() {
                      _club = res;
                    });
                    context.read<ClubBlocRead>().add(
                          BlocEventRead.append(res),
                        );
                    context.read<ClubBlocRead>().add(
                          BlocEventRead.select(res),
                        );
                  }));
                },
              )
            ],
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showScrollToTopButton) ...[
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
              ],
              FloatingActionButton.extended(
                heroTag: 'new_member_button_$hashCode',
                label: TitleSmall('Add Member'),
                icon: const Icon(MoonIcons.generic_plus_24_light),
                onPressed: () {
                  context.router.push(AddMemberRoute());
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
                  TitleSmall('Overview'),
                  Gap(4.h),
                  BlocBuilder<ClubMembersCubit, ClubMembersState>(
                    builder: (context, state) {
                      return ClubOverviewCard(
                        membersCount: state.members.length,
                        programsCount: _club?.programCount,
                        examsCount: _club?.examCount,
                        tacticalCount: _club?.tacticalCount,
                      );
                    },
                  ),
                  Gap(16.h),
                  Row(
                    children: [
                      TitleSmall('Members'),
                      Gap(32.w),
                      Expanded(
                        child: MySearchBar(
                          onChanged: (value) {
                            if (value == null) return;
                            context
                                .read<ClubMembersCubit>()
                                .filterMembers(value);
                          },
                          height: 32.h,
                          controller: search,
                          trailing: MoonButton.icon(
                            buttonSize: MoonButtonSize.xs,
                            icon: const Icon(MoonIcons.controls_close_24_light),
                            onTap: () {
                              search.clear();
                              context
                                  .read<ClubMembersCubit>()
                                  .filterMembers('');
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
                        scrollController: scroll,
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
                                        borderRadius:
                                            BorderRadius.circular(32.w),
                                      ),
                                      child: BodyMedium(
                                        item.role.name,
                                        color: context.moonColors?.frieza,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                MoonButton.icon(
                                  icon: const Icon(
                                    MoonIcons.generic_delete_24_light,
                                    color: Colors.red,
                                  ),
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) {
                                        return BlocProvider.value(
                                          value:
                                              context.read<ClubMembersCubit>(),
                                          child: AlertDialog(
                                            title: const Text('Kick Member'),
                                            content: const Text(
                                                'Are you sure you want to kick this member?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  context
                                                      .read<ClubMembersCubit>()
                                                      .kickMember(
                                                          clubId:
                                                              _club?.id ?? 0,
                                                          userId: item.id);
                                                  Navigator.pop(ctx);
                                                },
                                                child: const Text('Yes'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(ctx);
                                                },
                                                child: const Text('No'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                  Gap(16.h),
                  TitleSmall('About'),
                  ListViewBuilderTile(
                    imageUrl: _club?.media?.url,
                    titleText: _club?.name,
                    subtitleText: _club?.description,
                  ),
                  Gap(16.h),
                  MoonFilledButton(
                    width: double.infinity,
                    label: TitleSmall('Leave'),
                    trailing: Icon(
                      MoonIcons.generic_log_out_24_light,
                    ),
                    backgroundColor: Colors.red,
                    onTap: () async {
                      final res = await showDialog(
                        context: context,
                        builder: (ctx) {
                          return AlertDialog(
                            title: const Text('Leave Club'),
                            content: const Text(
                                'Are you sure you want to leave this club?'),
                            actions: [
                              TextButton(
                                onPressed: () async {
                                  await context
                                      .read<ClubMembersCubit>()
                                      .leaveClub(clubId: _club?.id ?? 0);
                                  if (ctx.mounted) {
                                    Navigator.pop(ctx, true);
                                  }
                                },
                                child: const Text('Yes'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(ctx, false);
                                },
                                child: const Text('No'),
                              ),
                            ],
                          );
                        },
                      );
                      if (res == true) {
                        if (context.mounted) {
                          context.read<ClubBlocRead>().add(BlocEventRead.get());
                          context.router.replace(
                            const ListClubRoute(),
                          );
                        }
                      }
                    },
                  ),
                  Gap(128.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
