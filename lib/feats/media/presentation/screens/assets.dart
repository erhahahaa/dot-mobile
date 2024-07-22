import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AssetsScreen extends StatefulWidget {
  const AssetsScreen({super.key});

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
                    side: BorderSide(
                      width: 2,
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                  onPressed: () => context.pop(),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_circle_left_outlined,
                        color: context.theme.colorScheme.onPrimary,
                        size: 14.sp,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        context.str?.back ?? 'Back',
                        style: TextStyle(
                          color: context.theme.colorScheme.onPrimary,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  width: 216.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(64.r),
                  ),
                  child: Text(
                    'Assets',
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
                              ),
                              ExerciseAssetView(
                                medias: state.exerciseMedias,
                              ),
                              ExamAssetView(
                                medias: state.examMedias,
                              ),
                              QuestionAssetView(
                                medias: state.questionMedias,
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
        context.read<MediaCubit>().getAll(parent: MediaParent.club);
        break;
      case 2:
        context.read<MediaCubit>().getAll(parent: MediaParent.program);
        break;
      case 3:
        context.read<MediaCubit>().getAll(parent: MediaParent.exercise);
        break;
      case 4:
        context.read<MediaCubit>().getAll(parent: MediaParent.exam);
        break;
      case 5:
        context.read<MediaCubit>().getAll(parent: MediaParent.question);
        break;
      default:
        context.read<MediaCubit>().getAll(parent: MediaParent.club);
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
          return Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color:
                  context.theme.colorScheme.primaryContainer.withOpacity(0.1),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: medias[index]
                      .determineLoader(width: 128.w, height: 128.w),
                ),
                Divider(),
                Text(
                  medias[index].name.maxChar(length: 15),
                  style: context.theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.download,
                        size: 16.sp,
                      ),
                      onTap: () {
                        context.read<MediaCubit>().download(medias[index]);
                      },
                    ),
                    SizedBox(width: 16.w),
                    InkWell(
                      child: Icon(
                        Icons.info,
                        size: 16.sp,
                      ),
                      onTap: () {
                        showAdaptiveDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Asset Info'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Name: ${medias[index].name}'),
                                  Text('Type: ${medias[index].type.value}'),
                                  Text('Size: ${medias[index].fileSize}'),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                              'URL: ${medias[index].url.sanitize()}')),
                                      InkWell(
                                        child: Icon(
                                          Icons.copy,
                                        ),
                                        onTap: () {
                                          medias[index]
                                              .url
                                              .sanitize()
                                              .toClipboard();
                                          'Copied to clipboard'
                                              .toToastSuccess(context);
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ProgramAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  const ProgramAssetView({super.key, required this.medias});

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<MediaCubit>().upload(MediaParent.program);
        },
        label: Row(
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
          return Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color:
                  context.theme.colorScheme.primaryContainer.withOpacity(0.1),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: medias[index]
                      .determineLoader(width: 128.w, height: 128.w),
                ),
                Divider(),
                Text(
                  medias[index].name.maxChar(length: 15),
                  style: context.theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ExerciseAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  const ExerciseAssetView({super.key, required this.medias});

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<MediaCubit>().upload(MediaParent.exercise);
        },
        label: Row(
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
          return Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color:
                  context.theme.colorScheme.primaryContainer.withOpacity(0.1),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: medias[index]
                      .determineLoader(width: 128.w, height: 128.w),
                ),
                Divider(),
                Text(
                  medias[index].name.maxChar(length: 15),
                  style: context.theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ExamAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  const ExamAssetView({super.key, required this.medias});

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<MediaCubit>().upload(MediaParent.exam);
        },
        label: Row(
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
          return Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color:
                  context.theme.colorScheme.primaryContainer.withOpacity(0.1),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: medias[index]
                      .determineLoader(width: 128.w, height: 128.w),
                ),
                Divider(),
                Text(
                  medias[index].name.maxChar(length: 15),
                  style: context.theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class QuestionAssetView extends StatelessWidget {
  final List<MediaModel> medias;
  const QuestionAssetView({super.key, required this.medias});

  @override
  Widget build(BuildContext context) {
    return Parent(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<MediaCubit>().upload(MediaParent.question);
        },
        label: Row(
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
          return Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color:
                  context.theme.colorScheme.primaryContainer.withOpacity(0.1),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: medias[index]
                      .determineLoader(width: 128.w, height: 128.w),
                ),
                Divider(),
                Text(
                  medias[index].name.maxChar(length: 15),
                  style: context.theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
