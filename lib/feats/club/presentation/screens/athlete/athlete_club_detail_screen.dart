import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AthleteClubDetailScreen extends StatefulWidget {
  final ClubModel club;

  const AthleteClubDetailScreen({super.key, required this.club});

  @override
  State<AthleteClubDetailScreen> createState() =>
      _AthleteClubDetailScreenState();
}

class _AthleteClubDetailScreenState extends State<AthleteClubDetailScreen> {
  bool hideListProgram = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgramCubit, ProgramState>(builder: (context, state) {
      return Parent(
        body: RoundedTopBackground(
          title: widget.club.name,
          child: RefreshIndicator(
            onRefresh: () => context.read<ProgramCubit>().init(
                  clubId: widget.club.id,
                ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ListProgram(
                      programs: state.programs,
                      isCoach: false,
                      isLoading: state.state == BaseState.loading,
                      club: widget.club,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
