import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssetTab extends StatelessWidget {
  final int clubId;
  final List<MediaModel> clubMedias,
      programMedias,
      exerciseMedias,
      examMedias,
      questionMedias;
  final bool showUploadButton;
  final Function(MediaModel)? onTap;

  const AssetTab({
    super.key,
    required this.clubId,
    required this.clubMedias,
    required this.programMedias,
    required this.exerciseMedias,
    required this.examMedias,
    required this.questionMedias,
    this.showUploadButton = true,
    this.onTap,
  });

  final _tabs = const [
    Tab(
      text: 'Club',
      icon: Icon(Icons.group),
    ),
    Tab(
      text: 'Program',
      icon: Icon(Icons.book),
    ),
    Tab(
      text: 'Exercise',
      icon: Icon(Icons.fitness_center),
    ),
    Tab(
      text: 'Exam',
      icon: Icon(Icons.assignment),
    ),
    Tab(
      text: 'Question',
      icon: Icon(Icons.question_answer),
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
                ClubAssetView(
                  medias: clubMedias,
                  onTap: onTap,
                ),
                ProgramAssetView(
                  medias: programMedias,
                  clubId: clubId,
                  showUploadButton: showUploadButton,
                  onTap: onTap,
                ),
                ExerciseAssetView(
                  medias: exerciseMedias,
                  clubId: clubId,
                  showUploadButton: showUploadButton,
                  onTap: onTap,
                ),
                ExamAssetView(
                  medias: examMedias,
                  clubId: clubId,
                  showUploadButton: showUploadButton,
                  onTap: onTap,
                ),
                QuestionAssetView(
                  medias: questionMedias,
                  clubId: clubId,
                  showUploadButton: showUploadButton,
                  onTap: onTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleTabChange(int index, BuildContext context) {
    switch (index + 1) {
      case 1:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.club,
              clubId: clubId,
            );
        break;
      case 2:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.program,
              clubId: clubId,
            );
        break;
      case 3:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.exercise,
              clubId: clubId,
            );
        break;
      case 4:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.exam,
              clubId: clubId,
            );
        break;
      case 5:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.question,
              clubId: clubId,
            );
        break;
      default:
        context.read<MediaCubit>().getAll(
              parent: MediaParent.club,
              clubId: clubId,
            );
    }
  }
}
