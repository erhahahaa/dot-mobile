import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TacticalAppBar extends StatelessWidget {
  final TacticalModel tactical;
  final VoidCallback onEndDrawerTap;
  final List<UserModel> audiences;
  final bool isConnected;
  const TacticalAppBar({
    super.key,
    required this.tactical,
    required this.onEndDrawerTap,
    required this.audiences,
    required this.isConnected,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(tactical.name),
      actions: tactical.isLive == true
          ? [
              IconButton(
                onPressed: onEndDrawerTap,
                icon: Stack(
                  children: [
                    Icon(Icons.group, size: 36.sp),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          audiences.length.toString(),
                          style: context.theme.textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
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
            ]
          : [],
    );
  }
}
