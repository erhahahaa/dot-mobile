import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/app.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class TacticalAppBar extends StatelessWidget {
  final TacticalModel? tactical;
  final VoidCallback onEndDrawerTap;
  final List<UserModel> audiences;
  final bool isConnected, showActions;

  const TacticalAppBar({
    super.key,
    required this.tactical,
    required this.onEndDrawerTap,
    required this.audiences,
    required this.isConnected,
    this.showActions = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TitleLarge(tactical?.name),
      actions: [
        if (tactical?.isLive == true) ...[
          IconButton(
            onPressed: onEndDrawerTap,
            icon: Badge(
              label: Text(audiences.length.toString()),
              child: Icon(MoonIcons.generic_users_24_light, size: 24.sp),
            ),
          ),
          SizedBox(width: 16.w),
          Container(
            width: 12.w,
            height: 12.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isConnected ? Colors.green : Colors.red,
            ),
          ),
          SizedBox(width: 16.w),
        ],
        if (showActions) ...[
          BlocListener<TacticalBlocWrite, BlocWriteState<TacticalModel>>(
            listener: (context, state) {
              if (!showActions) return;
              state.whenOrNull(
                success: (success) {
                  context.read<TacticalBlocRead>().add(
                        BlocReadEvent.remove(success.id),
                      );
                  context.successToast(
                    title: 'Success',
                    description:
                        '${success.name} has been deleted successfully.',
                  );
                  Navigator.of(context).pop();
                },
                failure: (message) {
                  context.errorToast(
                    title: 'Failure',
                    description: message,
                  );
                },
              );
            },
            child: MoonButton.icon(
              icon: const Icon(
                MoonIcons.generic_delete_24_light,
                color: Colors.red,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) {
                    return BlocProvider.value(
                      value: context.read<TacticalBlocWrite>(),
                      child: AlertDialog(
                        title: const Text('Delete tactical'),
                        content: const Text(
                            'Are you sure you want to delete this tactical?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              context.read<TacticalBlocWrite>().add(
                                    BlocWriteEvent.delete(DeleteTacticalParams(
                                      tacticalId: tactical?.id ?? 0,
                                    )),
                                  );
                              Navigator.of(ctx).pop();
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          MoonButton.icon(
            icon: const Icon(MoonIcons.generic_edit_24_light),
            onTap: () {
              context.router.popAndPush(const UpsertTacticalRoute());
            },
          )
        ]
      ],
    );
  }
}
