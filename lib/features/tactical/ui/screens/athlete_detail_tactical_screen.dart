import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailTacticalScreen extends StatelessWidget {
  final int id;

  const DetailTacticalScreen({
    super.key,
    @PathParam('id') required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
