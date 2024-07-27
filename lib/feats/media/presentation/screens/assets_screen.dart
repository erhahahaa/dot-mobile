import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssetsScreen extends StatelessWidget {
  final int clubId;
  const AssetsScreen({super.key, required this.clubId});

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: BlocBuilder<MediaCubit, MediaState>(
        builder: (context, state) {
          return RoundedTopBackground(
            title: 'Assets',
            child: AssetTab(
              clubId: clubId,
              clubMedias: state.clubMedias,
              programMedias: state.programMedias,
              exerciseMedias: state.exerciseMedias,
              examMedias: state.examMedias,
              questionMedias: state.questionMedias,
            ),
          );
        },
      ),
    );
  }
}
