import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserContainer extends StatefulWidget {
  final UserModel user;
  final int clubId;
  final bool withPopUp;
  final bool showUsername;
  final bool isCoach;
  final Widget? evaluate;

  const UserContainer({
    super.key,
    required this.user,
    required this.clubId,
    required this.withPopUp,
    this.showUsername = false,
    required this.isCoach,
    this.evaluate,
  });

  @override
  State<UserContainer> createState() => _UserContainerState();
}

class _UserContainerState extends State<UserContainer> {
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
              backgroundImage: NetworkImage(widget.user.image.sanitize()),
            ),
            SizedBox(width: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.user.name.maxChar(length: 12),
                  style: theme.textTheme.bodyLarge,
                ),
                if (widget.showUsername) ...[
                  Chirp(
                    text: '@${widget.user.username}'.maxChar(length: 12),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                    color: widget.user.role.color,
                  )
                ] else ...[
                  Chirp(
                    text: widget.user.role.name.maxChar(length: 20).capitalize,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                    color: widget.user.role.color,
                  )
                ]
              ],
            ),
            const Spacer(),
            widget.evaluate != null
                ? widget.evaluate!
                : widget.withPopUp
                    ? widget.isCoach
                        ? Container()
                        : PopupMenuButton(
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
                                      const Icon(Icons.delete),
                                      const SizedBox(width: 8),
                                      Text(
                                        context.str?.kick ?? 'Kick',
                                      ),
                                    ],
                                  ),
                                  onTap: () => context
                                      .read<ClubCubit>()
                                      .kick(widget.clubId, widget.user.id),
                                ),
                              ];
                            },
                          )
                    : ElevatedButton(
                        onPressed: () => _showAddMemberDialog(context),
                        child: Text(
                          context.str?.add ?? 'Add',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
          ],
        ),
      ),
    );
  }

  void _showAddMemberDialog(BuildContext context) {
    UserRole selectedRole = UserRole.athlete;

    showDialog(
      context: context,
      builder: (c) {
        return BlocProvider.value(
          value: context.read<ClubCubit>(),
          child: BlocListener<ClubCubit, ClubState>(
            listener: (context, state) {
              if (state.failure != null) {
                ToastModel(
                  message: state.failure?.message ?? 'An error occured',
                  type: ToastType.error,
                ).fire(context);
              }
              if (state.state == BaseState.success) {
                ToastModel(
                  message: 'Member added successfully',
                  type: ToastType.success,
                ).fire(context);
                Navigator.of(c).pop();
              }
            },
            child: AlertDialog(
              title: const H2Text("Add new member"),
              content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownButton<UserRole>(
                        value: selectedRole,
                        onChanged: (UserRole? newValue) {
                          if (newValue != null) {
                            setState(() {
                              selectedRole = newValue;
                            });
                          }
                        },
                        items: UserRole.values.map<DropdownMenuItem<UserRole>>(
                          (UserRole value) {
                            return DropdownMenuItem<UserRole>(
                              value: value,
                              child: H3Text(value.name.capitalize),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  );
                },
              ),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            const Color(0xff2EC12B)),
                      ),
                      onPressed: () {
                        context.read<ClubCubit>().addUser(
                              widget.clubId,
                              widget.user.id,
                              selectedRole,
                            );
                      },
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            const Color(0xffF15858)),
                      ),
                      onPressed: () {
                        Navigator.of(c).pop();
                      },
                      child: Text(
                        context.str?.cancel ?? 'Cancel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
