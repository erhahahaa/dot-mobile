import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserContainer extends StatelessWidget {
  final UserModel user;
  final int clubId;
  final bool withPopUp;
  final bool showUsername;

  const UserContainer({
    super.key,
    required this.user,
    required this.clubId,
    required this.withPopUp,
    this.showUsername = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: theme.colorScheme.primaryContainer.withOpacity(0.1),
        ),
        padding: EdgeInsets.all(8.w),
        margin: EdgeInsets.only(bottom: 8.w),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24.r,
              backgroundImage: NetworkImage(user.image.sanitize()),
            ),
            SizedBox(width: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: theme.textTheme.bodyLarge,
                ),
                if (showUsername) ...[
                  Chirp(
                    text: '@${user.username}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                    color: user.role.color,
                  )
                ] else ...[
                  Chirp(
                    text: user.role.name.capitalize,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                    color: user.role.color,
                  )
                ]
              ],
            ),
            const Spacer(),
            withPopUp
                ? PopupMenuButton(
                    popUpAnimationStyle: AnimationStyle(
                      curve: Easing.emphasizedDecelerate,
                      duration: const Duration(milliseconds: 500),
                    ),
                    icon: const Icon(Icons.more_vert), 
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          child: Row(
                            children: [
                              const Icon(Icons.edit),
                              const SizedBox(width: 8),
                              Text(
                                context.str?.edit ?? 'Edit',
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              const Icon(Icons.delete),
                              const SizedBox(width: 8),
                              Text(
                                context.str?.kick ?? 'Kick',
                              ),
                            ],
                          ),
                          onTap: () =>
                              context.read<ClubCubit>().kick(clubId, user.id),
                        ),
                      ];
                    },
                  )
                : ElevatedButton(
                    onPressed: () =>
                        context.read<ClubCubit>().addUser(clubId, user.id),
                    child: Text(
                      context.str?.add ?? 'Add',
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: theme.colorScheme.surface),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
