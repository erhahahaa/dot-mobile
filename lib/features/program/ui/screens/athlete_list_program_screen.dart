import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AthleteListProgramScreen extends StatefulWidget {
  final int clubId;

  const AthleteListProgramScreen({
    super.key,
    @pathParam required this.clubId,
  });

  @override
  State<AthleteListProgramScreen> createState() =>
      _AthleteListProgramScreenState();
}

class _AthleteListProgramScreenState extends State<AthleteListProgramScreen> {
  late ScrollController _scrollController;
  late TextEditingController _searchController;
  bool showScrollToTopButton = false;
  

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
