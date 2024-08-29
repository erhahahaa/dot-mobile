import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/extensions/datetime.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class DetailProgramScreen extends StatelessWidget implements AutoRouteWrapper {
  final int id;
  const DetailProgramScreen({
    super.key,
    @pathParam required this.id,
  });
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: context.read<ExerciseBlocRead>()..add(BlocEventRead.get(id: id)),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: BlocBuilder<ProgramBlocRead, BlocStateRead>(
          builder: (context, state) {
            if (state is BlocStateReadSuccess) {
              final program = state.selectedItem;
              if (program != null) {
                return TitleLarge(program.name);
              }
            }
            return const TitleLarge('Detail Program');
          },
        ),
        actions: [
          BlocListener<ProgramBlocWrite, BlocStateWrite<ProgramModel>>(
            listener: (context, state) {
              state.whenOrNull(
                success: (success) {
                  context.read<ProgramBlocRead>().add(
                        BlocEventRead.remove(success.id),
                      );
                  context.successToast(
                    title: 'Success',
                    description:
                        '${success.name} has been deleted successfully.',
                  );
                  Navigator.of(context).pop();
                },
                failure: (message) {
                  context.errorToast(
                    title: 'Failure',
                    description: message,
                  );
                },
              );
            },
            child: MoonButton.icon(
              icon: const Icon(
                MoonIcons.generic_delete_24_light,
                color: Colors.red,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) {
                    return BlocProvider.value(
                      value: context.read<ProgramBlocWrite>(),
                      child: AlertDialog(
                        title: const Text('Delete Program'),
                        content: const Text(
                            'Are you sure you want to delete this program?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              context.read<ProgramBlocWrite>().add(
                                    BlocEventWrite.delete(
                                        DeleteProgramParams(programId: id)),
                                  );
                              Navigator.of(ctx).pop();
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          MoonButton.icon(
            icon: const Icon(MoonIcons.generic_edit_24_light),
            onTap: () {
              context.router.popAndPush(const UpsertProgramRoute());
            },
          )
        ],
      ),
      body: BlocBuilder<ProgramBlocRead, BlocStateRead<ProgramModel>>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (items, filteredItems, selectedItem) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleMedium(
                          context.str?.programDetail ?? 'Program Detail'),
                      ContainerWrapper(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BodyMedium('Name : ${selectedItem?.name}'),
                            if (selectedItem?.startDate != null) ...[
                              BodyMedium(
                                'Start date : ${selectedItem?.startDate!.toDayMonthYear()}',
                              ),
                            ],
                            if (selectedItem?.endDate != null) ...[
                              BodyMedium(
                                'End date : ${selectedItem?.endDate!.toDayMonthYear()}',
                              ),
                            ]
                          ],
                        ),
                      ),
                      BlocBuilder<ExerciseBlocRead,
                          BlocStateRead<ExerciseModel>>(
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TitleMedium(context.str?.exercise ?? 'Exercises'),
                              Gap(8.h),
                              state.maybeWhen(
                                success: (items, __, ___) {
                                  return ListViewBuilder(
                                    items: items,
                                    itemBuilder: (context, item) {
                                      return ExerciseContainer(
                                        exercise: item,
                                      );
                                    },
                                  );
                                },
                                orElse: () => const SizedBox(),
                              ),
                              Gap(16.h),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
