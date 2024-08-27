import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/features/exercise/data/models/exercise_model.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

class ExerciseContainer extends StatefulWidget {
  final ExerciseModel exercise;
  const ExerciseContainer({
    super.key,
    required this.exercise,
  });

  @override
  State<ExerciseContainer> createState() => _ExerciseContainerState();
}

class _ExerciseContainerState extends State<ExerciseContainer> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return ContainerWrapper(
      margin: EdgeInsets.only(bottom: 8.w),
      child: isExpanded ? _buildExpanded(context) : _buildTitle(),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          icon: Icon(
            isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
          ),
        ),
        Gap(8.w),
        TitleSmall(widget.exercise.name),
      ],
    );
  }

  Widget _buildExpanded(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        Gap(8.h),
        Container(
          width: 310.w,
          height: 210.h,
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: widget.exercise.media != null
              ? widget.exercise.media!.determineLoader(
                  context,
                  width: 310.w,
                  height: 310.h,
                  asDialog: false,
                )
              : Container(),
        ),
        Gap(8.h),
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color:
                  context.theme.textTheme.titleLarge?.color?.withOpacity(0.5) ??
                      Colors.grey,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MoonChip(
                        padding: EdgeInsets.all(4.w),
                        label: BodySmall(
                            'Sets : ${widget.exercise.sets?.value} ${widget.exercise.sets?.unit}'),
                        backgroundColor: Colors.redAccent.withOpacity(0.5),
                      ),
                      Gap(8.h),
                      MoonChip(
                        padding: EdgeInsets.all(4.w),
                        label: BodySmall(
                            'Rest : ${widget.exercise.rest?.value} ${widget.exercise.rest?.unit}'),
                        backgroundColor: Colors.amberAccent.withOpacity(0.5),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MoonChip(
                        padding: EdgeInsets.all(4.w),
                        label: BodySmall(
                            'Reps : ${widget.exercise.repetition?.value} ${widget.exercise.repetition?.unit}'),
                        backgroundColor: Colors.greenAccent.withOpacity(0.5),
                      ),
                      Gap(8.h),
                      MoonChip(
                        padding: EdgeInsets.all(4.w),
                        label: BodySmall(
                            'Tempo : ${widget.exercise.tempo?.value} ${widget.exercise.tempo?.unit}'),
                        backgroundColor: Colors.orangeAccent.withOpacity(0.5),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(8.h),
              MoonChip(
                label: BodySmall(
                    'Intensity: ${widget.exercise.intensity?.value} ${widget.exercise.intensity?.unit}'),
                backgroundColor: Colors.purpleAccent.withOpacity(0.5),
              ),
            ],
          ),
        ),
        if (widget.exercise.description != null ||
            (widget.exercise.description?.isEmpty ?? false)) ...[
          Gap(8.h),
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: context.theme.textTheme.titleLarge?.color
                        ?.withOpacity(0.5) ??
                    Colors.grey,
              ),
            ),
            child: BodySmall(widget.exercise.description ?? ''),
          )
        ]
      ],
    );
  }
}
