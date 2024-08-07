import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class ListNotification extends StatelessWidget {
  final List<NotificationDataModel> notifications;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;

  const ListNotification({
    super.key,
    required this.notifications,
    this.padding,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      final fakeNotification = List.generate(
        3,
        (index) => NotificationDataModel(
          title: 'Title $index',
          body: 'Body $index',
        ),
      ).toList();

      return ListView.builder(
        itemCount: fakeNotification.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return NotificationContainer(
            notification: fakeNotification[index],
          );
        },
      );
    }

    if (notifications.isEmpty) {
      return EightContainer(
        child: Center(
          child: Text(
            'No Notification',
            style: context.theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: notifications.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return NotificationContainer(
          notification: notifications[index],
        );
      },
    );
  }
}
