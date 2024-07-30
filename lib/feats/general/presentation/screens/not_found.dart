import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: Center(
        child: H1Text(
          context.str?.pageNotFound ?? 'Page not found',
        ),
      ),
    );
  }
}
