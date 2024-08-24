import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class UpsertClubScreen extends StatelessWidget implements AutoRouteWrapper {
  const UpsertClubScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ClubBlocWrite>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: Center(
        child: TextButton(
          onPressed: () async {
            final res = await sl<ImagePickerService>().getImageFromGallery();
            res.fold(
              (l) => null,
              (r) {
                context.read<ClubBlocWrite>().add(
                      BlocEventWrite.create(
                        CreateClubParams(
                          name: 'Club Name',
                          description: 'Club Description',
                          image: r,
                          type: SportType.basketBall,
                        ),
                      ),
                    );
              },
            );
          },
          child: const Text('data'),
        ),
      ),
    );
  }
}
