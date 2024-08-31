import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

class ErrorAlert extends StatelessWidget {
  final String? message;
  final VoidCallback? onRetry;

  const ErrorAlert(
    this.message, {
    super.key,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return MoonAlert.filled(
      
      color: context.moonColors?.chichi,
      backgroundColor: context.moonColors?.chichi10,
      leading: const Icon(MoonIcons.notifications_alert_24_light),
      label: Text(message ?? 'An error occurred'),
      trailing: onRetry != null
          ? MoonButton.icon(
              onTap: onRetry,
              icon: Icon(
                MoonIcons.arrows_refresh_round_24_light,
                color: context.moonColors!.chichi,
              ),
            )
          : null,
    );
  }
}
