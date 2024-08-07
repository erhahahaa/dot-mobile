import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationContainer extends StatelessWidget {
  final NotificationDataModel notification;
  const NotificationContainer({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      child: Row(
        children: [
          Icon(Icons.notifications),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notification.title ?? ''),
                Text(notification.body ?? ''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
