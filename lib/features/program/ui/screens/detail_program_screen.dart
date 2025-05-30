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
class DetailProgramScreen extends StatefulWidget implements AutoRouteWrapper {
  final int id;
  const DetailProgramScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  State<DetailProgramScreen> createState() => _DetailProgramScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: context.read<ExerciseBlocRead>()..add(BlocReadEvent.get(id: id)),
      child: this,
    );
  }
}

class _DetailProgramScreenState extends BaseState<DetailProgramScreen> {
  ProgramModel? _program;

  @override
  void initState() {
    super.initState();

    final p = context.read<ProgramBlocRead>().state.whenOrNull(
          success: (_, __, item) => item,
        );

    safeSetState(() {
      _program = p;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: BlocBuilder<ProgramBlocRead, BlocReadState>(
          builder: (context, state) {
            if (state is BlocReadStateSuccess) {
              final program = state.selected;
              if (program != null) {
                return TitleLarge(program.name);
              }
            }
            return TitleLarge(context.str?.programDetail ?? 'Program Detail');
          },
        ),
        actions: [
          BlocListener<ProgramBlocWrite, BlocWriteState<ProgramModel>>(
            listener: (context, state) {
              state.whenOrNull(
                success: (success) {
                  context.read<ProgramBlocRead>().add(
                        BlocReadEvent.remove(success.id),
                      );
                  context.successToast(
                    title: context.str?.success,
                    description: context.str?.programDeletedSuccessfully,
                  );
                  Navigator.of(context).pop();
                },
                failure: (message) {
                  context.errorToast(
                    title: context.str?.deleteProgramFailed,
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
                        title: Text(
                            context.str?.deleteProgram ?? 'Delete Program'),
                        content: Text(context.str
                                ?.areYouSureYouWantToDeleteProgram(
                                    _program?.name) ??
                            'Are you sure you want to delete this program?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Text(context.str?.no ?? 'No'),
                          ),
                          TextButton(
                            onPressed: () {
                              context.read<ProgramBlocWrite>().add(
                                    BlocWriteEvent.delete(DeleteProgramParams(
                                        programId: widget.id)),
                                  );
                              Navigator.of(ctx).pop();
                            },
                            child: Text(context.str?.yes ?? 'Yes'),
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
      floatingActionButton: BackTopButton(
        show: showScrollToTopButton,
        onPressed: scrollToTop,
      ),
      body: BlocBuilder<ProgramBlocRead, BlocReadState<ProgramModel>>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (items, filteredItems, selected) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: SingleChildScrollView(
                  controller: scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
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
                            BodyMedium(
                                '${context.str?.name}: ${selected?.name}'),
                            if (selected?.startDate != null) ...[
                              BodyMedium(
                                '${context.str?.startDate}: ${selected?.startDate!.toDayMonthYear()}',
                              ),
                            ],
                            if (selected?.endDate != null) ...[
                              BodyMedium(
                                '${context.str?.endDate}: ${selected?.endDate!.toDayMonthYear()}',
                              ),
                            ]
                          ],
                        ),
                      ),
                      BlocBuilder<ExerciseBlocRead,
                          BlocReadState<ExerciseModel>>(
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TitleMedium(
                                  context.str?.exercises ?? 'Exercises'),
                              Gap(8.h),
                              state.maybeWhen(
                                success: (items, __, ___) {
                                  return ListViewBuilder(
                                    items: items,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index, item) {
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
            orElse: () => const Center(child: MoonCircularLoader()),
          );
        },
      ),
    );
  }
}
