import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackTopButton extends StatelessWidget {
  final bool show;
  final VoidCallback onPressed;

  const BackTopButton({
    super.key,
    required this.show,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: show ? 48.h : 0,
      child: FloatingActionButton(
        heroTag: 'back_top_button_${hashCode}',
        onPressed: onPressed,
        child: show ? const Icon(Icons.arrow_upward) : null,
      ),
    );
  }
}
