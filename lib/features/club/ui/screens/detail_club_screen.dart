import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailClubScreen extends StatelessWidget {
  final int id;
  const DetailClubScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: const Text('Club Detail'),
      ),
    );
  }
}
