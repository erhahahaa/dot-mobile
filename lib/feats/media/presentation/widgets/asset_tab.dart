import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssetTab extends StatefulWidget {
  final int clubId;
  final List<MediaModel> clubMedias,
      programMedias,
      exerciseMedias,
      examMedias,
      questionMedias,
      tacticalMedias;
  final bool showUploadButton;
  final Function(MediaModel)? onTap;
  final bool isLoading;

  const AssetTab({
    super.key,
    required this.clubId,
    required this.clubMedias,
    required this.programMedias,
    required this.exerciseMedias,
    required this.examMedias,
    required this.questionMedias,
    required this.tacticalMedias,
    this.showUploadButton = true,
    this.onTap,
    required this.isLoading,
  });

  @override
  State<AssetTab> createState() => _AssetTabState();
}

class _AssetTabState extends State<AssetTab> {
  final List<Tab> _tabs = [];

  @override
  void initState() {
    final state = context.read<MediaCubit>().state;
    if (state.showClub) {
      _tabs.add(Tab(
        text: 'Club',
        icon: Icon(Icons.group),
      ));
    }
    if (state.showProgram) {
      _tabs.add(Tab(
        text: 'Program',
        icon: Icon(Icons.book),
      ));
    }
    if (state.showExercise) {
      _tabs.add(Tab(
        text: 'Exercise',
        icon: Icon(Icons.fitness_center),
      ));
    }
    if (state.showExam) {
      _tabs.add(Tab(
        text: 'Exam',
        icon: Icon(Icons.assignment),
      ));
    }
    if (state.showQuestion) {
      _tabs.add(Tab(
        text: 'Question',
        icon: Icon(Icons.question_answer),
      ));
    }
    if (state.showTactical) {
      _tabs.add(Tab(
        text: 'Tactical',
        icon: Icon(Icons.sports_soccer),
      ));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaCubit, MediaState>(
      builder: (context, state) {
        return DefaultTabController(
          length: _tabs.length,
          child: Column(
            children: [
              ButtonsTabBar(
                tabs: _tabs,
                backgroundColor: Colors.blueAccent,
                // borderWidth: 2,
                // borderColor: Colors.red,
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                onTap: (p0) => _handleTabChange(p0, context),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    if (state.showClub)
                      ClubAssetView(
                        medias: widget.clubMedias,
                        onTap: widget.onTap,
                        isLoading: widget.isLoading,
                        clubId: widget.clubId,
                      ),
                    if (state.showProgram)
                      ProgramAssetView(
                        medias: widget.programMedias,
                        clubId: widget.clubId,
                        showUploadButton: widget.showUploadButton,
                        onTap: widget.onTap,
                        isLoading: widget.isLoading,
                      ),
                    if (state.showExercise)
                      ExerciseAssetView(
                        medias: widget.exerciseMedias,
                        clubId: widget.clubId,
                        showUploadButton: widget.showUploadButton,
                        onTap: widget.onTap,
                        isLoading: widget.isLoading,
                      ),
                    if (state.showExam)
                      ExamAssetView(
                        medias: widget.examMedias,
                        clubId: widget.clubId,
                        showUploadButton: widget.showUploadButton,
                        onTap: widget.onTap,
                        isLoading: widget.isLoading,
                      ),
                    if (state.showQuestion)
                      QuestionAssetView(
                        medias: widget.questionMedias,
                        clubId: widget.clubId,
                        showUploadButton: widget.showUploadButton,
                        onTap: widget.onTap,
                        isLoading: widget.isLoading,
                      ),
                    if (state.showTactical)
                      TacticalAssetView(
                        medias: widget.tacticalMedias,
                        clubId: widget.clubId,
                        showUploadButton: widget.showUploadButton,
                        onTap: widget.onTap,
                        isLoading: widget.isLoading,
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _handleTabChange(int index, BuildContext context) {
    switch (index + 1) {
      case 1:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.club,
              clubId: widget.clubId,
            );
        break;
      case 2:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.program,
              clubId: widget.clubId,
            );
        break;
      case 3:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.exercise,
              clubId: widget.clubId,
            );
        break;
      case 4:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.exam,
              clubId: widget.clubId,
            );
        break;
      case 5:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.question,
              clubId: widget.clubId,
            );
        break;
      default:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.club,
              clubId: widget.clubId,
            );
    }
  }
}
