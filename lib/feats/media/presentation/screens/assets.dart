import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AssetsScreen extends StatefulWidget {
  final int clubId;
  const AssetsScreen({super.key, required this.clubId});

  @override
  State<AssetsScreen> createState() => _AssetsScreenState();
}

class _AssetsScreenState extends State<AssetsScreen> {
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
    return Parent(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF5767ED), Color(0xFF32ADBE)],
              ),
            ),
          ),
          Positioned(
            top: 32,
            left: 8,
            right: 8,
            child: Row(
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: BorderSide(
                      width: 2,
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                  onPressed: () => context.pop(),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: context.theme.colorScheme.onPrimary,
                        size: 14.sp,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  width: 248.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(64.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 8,
                        spreadRadius: 0,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    'Assets',
                    textAlign: TextAlign.center,
                    style: context.theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 90,
            child: Container(
              width: 344.w,
              height: 680.h,
              padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
              decoration: BoxDecoration(
                color: context.theme.colorScheme.surface,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r),
                ),
              ),
              child: BlocBuilder<MediaCubit, MediaState>(
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
                          onTap: (p0) => handleTabChange(p0, context),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              ClubAssetView(
                                medias: state.clubMedias,
                              ),
                              ProgramAssetView(
                                medias: state.programMedias,
                                clubId: widget.clubId,
                              ),
                              ExerciseAssetView(
                                medias: state.exerciseMedias,
                                clubId: widget.clubId,
                              ),
                              ExamAssetView(
                                medias: state.examMedias,
                                clubId: widget.clubId,
                              ),
                              QuestionAssetView(
                                medias: state.questionMedias,
                                clubId: widget.clubId,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void handleTabChange(int index, BuildContext context) {
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

class ClubAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  const ClubAssetView({super.key, required this.medias});

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (1 / 1.2),
        ),
        itemCount: medias.length,
        itemBuilder: (context, index) {
          return AssetContainer(media: medias[index]);
        },
      ),
    );
  }
}

class ProgramAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  final int clubId;
  const ProgramAssetView({
    super.key,
    required this.medias,
    required this.clubId,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<MediaCubit>().upload(
                MediaParent.program,
                clubId,
              );
        },
        label: const Row(
          children: [
            Icon(Icons.upload),
            Text('Upload'),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (1 / 1.2),
        ),
        itemCount: medias.length,
        itemBuilder: (context, index) {
          return AssetContainer(media: medias[index]);
        },
      ),
    );
  }
}

class ExerciseAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  final int clubId;
  const ExerciseAssetView({
    super.key,
    required this.medias,
    required this.clubId,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<MediaCubit>().upload(
                MediaParent.exercise,
                clubId,
              );
        },
        label: const Row(
          children: [
            Icon(Icons.upload),
            Text('Upload'),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (1 / 1.2),
        ),
        itemCount: medias.length,
        itemBuilder: (context, index) {
          return AssetContainer(media: medias[index]);
        },
      ),
    );
  }
}

class ExamAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  final int clubId;
  const ExamAssetView({
    super.key,
    required this.medias,
    required this.clubId,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<MediaCubit>().upload(
                MediaParent.exam,
                clubId,
              );
        },
        label: const Row(
          children: [
            Icon(Icons.upload),
            Text('Upload'),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (1 / 1.2),
        ),
        itemCount: medias.length,
        itemBuilder: (context, index) {
          return AssetContainer(media: medias[index]);
        },
      ),
    );
  }
}

class QuestionAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  final int clubId;
  const QuestionAssetView({
    super.key,
    required this.medias,
    required this.clubId,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<MediaCubit>().upload(
                MediaParent.question,
                clubId,
              );
        },
        label: const Row(
          children: [
            Icon(Icons.upload),
            Text('Upload'),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (1 / 1.2),
        ),
        itemCount: medias.length,
        itemBuilder: (context, index) {
          return AssetContainer(media: medias[index]);
        },
      ),
    );
  }
}
