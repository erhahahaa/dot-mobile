import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MediaScreen extends StatefulWidget implements AutoRouteWrapper {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    final clubBloc = context.read<ClubBlocRead>();
    final club = clubBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: context.read<ProgramMediaBlocRead>()
            ..add(
              BlocEventRead.get(id: club?.id),
            ),
        ),
        BlocProvider.value(
          value: context.read<ExerciseMediaBlocRead>()
            ..add(
              BlocEventRead.get(id: club?.id),
            ),
        ),
        BlocProvider.value(
          value: context.read<TacticalMediaBlocRead>()
            ..add(
              BlocEventRead.get(id: club?.id),
            ),
        ),
        BlocProvider.value(
          value: context.read<ProgramMediaBlocWrite>(),
        ),
        BlocProvider.value(
          value: context.read<ExerciseMediaBlocWrite>(),
        ),
        BlocProvider.value(
          value: context.read<TacticalMediaBlocWrite>(),
        ),
      ],
      child: this,
    );
  }
}

class _MediaScreenState extends BaseState<MediaScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final clubBloc = context.read<ClubBlocRead>();
    final club = clubBloc.state.whenOrNull(
      success: (_, __, selectedItem) => selectedItem,
    );
    return Parent(
      appBar: AppBar(
        title: const TitleMedium('Assets'),
        bottom: MediaTabBar(
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MediaView<ProgramMediaBlocRead, BlocStateRead<MediaModel>,
              ProgramMediaBlocWrite, BlocStateWrite<MediaModel>>(
            allowedExtensions: const ['jpg', 'jpeg', 'png', 'svg'],
            onUpload: (file) {
              context.read<ProgramMediaBlocWrite>().add(
                    BlocEventWrite.create({
                      'clubId': club?.id,
                      'file': file,
                    }),
                  );
            },
            onSuccess: (item) {
              context.read<ProgramMediaBlocRead>().add(
                    BlocEventRead.append(item),
                  );
            },
            onDownload: (item) {
              context
                  .read<ProgramMediaBlocRead>()
                  .add(BlocEventRead.getOne(item));
            },
          ),
          MediaView<ExerciseMediaBlocRead, BlocStateRead<MediaModel>,
              ExerciseMediaBlocWrite, BlocStateWrite<MediaModel>>(
            onUpload: (file) {
              context.read<ExerciseMediaBlocWrite>().add(
                    BlocEventWrite.create({
                      'clubId': club?.id,
                      'file': file,
                    }),
                  );
            },
            onSuccess: (item) {
              context.read<ExerciseMediaBlocRead>().add(
                    BlocEventRead.append(item),
                  );
            },
            onDownload: (item) {
              context
                  .read<ExerciseMediaBlocRead>()
                  .add(BlocEventRead.getOne(item));
            },
          ),
          MediaView<TacticalMediaBlocRead, BlocStateRead<MediaModel>,
              TacticalMediaBlocWrite, BlocStateWrite<MediaModel>>(
            allowedExtensions: const ['jpg', 'jpeg', 'png', 'svg'],
            onUpload: (file) {
              context.read<TacticalMediaBlocWrite>().add(
                    BlocEventWrite.create({
                      'clubId': club?.id,
                      'file': file,
                    }),
                  );
            },
            onSuccess: (item) {
              context.read<TacticalMediaBlocRead>().add(
                    BlocEventRead.append(item),
                  );
            },
            onDownload: (item) {
              context
                  .read<TacticalMediaBlocRead>()
                  .add(BlocEventRead.getOne(item));
            },
          ),
        ],
      ),
    );
  }
}
