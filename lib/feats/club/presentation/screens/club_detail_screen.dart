import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ClubDetailScreen extends StatefulWidget {
  final ClubModel club;
  const ClubDetailScreen({super.key, required this.club});

  @override
  State<ClubDetailScreen> createState() => _ClubDetailScreenState();
}

class _ClubDetailScreenState extends State<ClubDetailScreen> {
  late ClubModel _club;

  @override
  void initState() {
    _club = widget.club;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: RoundedTopBackground(
        title: _club.name,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1Text(context.str?.management ?? 'Management'),
              SizedBox(height: 8.h),
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.1),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ManageButton(
                          icon: Assets.icons.program.svg(width: 32.w),
                          text: context.str?.program ?? 'Program',
                          onTap: () => context.pushNamed(
                            AppRoutes.coachProgram.name,
                            extra: {
                              'route': 'club',
                              'club': _club,
                            },
                          ),
                        ),
                        ManageButton(
                          icon: Assets.icons.exam.svg(width: 32.w),
                          text: context.str?.exam ?? 'Exam',
                          onTap: () {
                            context.pushNamed(
                              AppRoutes.coachExam.name,
                              extra: {
                                'route': 'exam',
                                'club': _club,
                              },
                            );
                          },
                        ),
                        ManageButton(
                          icon: Assets.icons.tactical.svg(width: 32.w),
                          text: context.str?.tactical ?? 'Tactical',
                          onTap: () {
                            context.pushNamed(
                              AppRoutes.coachTactical.name,
                              extra: {
                                'route': 'tactical',
                                'club': _club,
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ManageButton(
                          icon: Assets.icons.invite.svg(width: 32.w),
                          text: context.str?.invite ?? 'Invite',
                          onTap: () {
                            context.pushNamed(
                              AppRoutes.coachAddMember.name,
                              pathParameters: {
                                'clubId': _club.id.toString(),
                              },
                            );
                          },
                        ),
                        ManageButton(
                          icon: Assets.icons.members.svg(width: 32.w),
                          text: context.str?.members ?? 'Members',
                          onTap: () {
                            context.pushNamed(
                              AppRoutes.coachClubMember.name,
                              pathParameters: {
                                'clubId': _club.id.toString(),
                              },
                            );
                          },
                        ),
                        ManageButton(
                          icon: Assets.icons.assets.svg(width: 32.w),
                          text: context.str?.assets ?? 'Assets',
                          onTap: () {
                            context.pushNamed(
                              AppRoutes.coachMedia.name,
                              extra: {
                                'route': 'media',
                                'club': _club,
                              },
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                context.str?.settings ?? 'Settings',
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.1),
                ),
                child: Column(
                  children: [
                    EditButton(
                        club: widget.club,
                        onPressed: () async {
                          final res = await context.pushNamed<ClubModel>(
                            AppRoutes.coachEditClub.name,
                            extra: {
                              'club': _club,
                            },
                          );

                          if (res == null) {
                            return;
                          }
                          setState(() {
                            _club = res;
                          });
                        }),
                    SizedBox(height: 4.h),
                    LeaveButton(
                      clubId: widget.club.id,
                      onPressed: () => showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            title:
                                H2Text(context.str?.leaveClub ?? 'Leave Club'),
                            content: H4Text(
                              context.str?.leaveClubConfirmation ??
                                  'Are you sure you want to leave this club?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text(context.str?.cancel ?? 'Cancel'),
                              ),
                              BlocListener<ClubCubit, ClubState>(
                                  listenWhen: (p, c) => p.state != c.state,
                                  listener: (context, state) {
                                    if (state.state == BaseState.failure) {
                                      ToastModel(
                                        message: context.str?.failedLeaveClub,
                                        type: ToastType.error,
                                      ).fire(context);
                                    }

                                    if (state.state == BaseState.success) {
                                      ToastModel(
                                        message: context.str?.leaveClubSuccess,
                                        type: ToastType.success,
                                      ).fire(context);
                                      context.pop();
                                    }
                                  },
                                  child: TextButton(
                                    onPressed: () => context
                                        .read<ClubCubit>()
                                        .leave(widget.club.id),
                                    child: Text(context.str?.leave ?? 'Leave'),
                                  )),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                context.str?.about ?? 'About',
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: sportImage(_club.media?.url).sanitize(),
                    width: 48.w,
                    height: 48.w,
                    imageBuilder: (context, imageProvider) => Container(
                      width: 48.w,
                      height: 48.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _club.name,
                        style: context.theme.textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 4.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: context.theme.colorScheme.tertiary
                              .withOpacity(0.2),
                          borderRadius: BorderRadius.circular(32.r),
                        ),
                        child: Text(
                          _club.type.name,
                          style: context.theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '${context.str?.establishedAt ?? 'establishedAt:'} ${_club.createdAt?.toDayMonthYear(locale: context.locale.languageCode) ?? ''}',
                style: context.theme.textTheme.bodyMedium,
              ),
              Text(
                _club.description,
                style: context.theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
