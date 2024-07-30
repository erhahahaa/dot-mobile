import 'package:flutter/material.dart';

class FloatingButtonExtended extends StatelessWidget {
  final void Function()? onPressed;
  final bool? isDisabled, isLoading;
  final Widget? icon;
  final String text;
  const FloatingButtonExtended({
    super.key,
    this.onPressed,
    this.isDisabled,
    this.isLoading,
    this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: isDisabled! || isLoading! ? null : onPressed,
      label: isDisabled! || isLoading!
          ? const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Row(
              children: [
                if (icon != null) icon!,
                if (icon != null) const SizedBox(width: 8),
                Text(text),
              ],
            ),
      backgroundColor: isDisabled! || isLoading!
          ? Colors.grey
          : Theme.of(context).colorScheme.primary,
    );
  }
}
