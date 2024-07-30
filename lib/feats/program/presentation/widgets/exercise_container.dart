import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExerciseContainer extends StatefulWidget {
  final ProgramExerciseModel exercise;
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
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.1),
      ),
      margin: EdgeInsets.only(bottom: 8.w),
      child: isExpanded ? _buildExpanded(context) : _buildTitle(),
    );
  }

  Widget _buildTitle() {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: context.containerColor(0.1),
      ),
      child: Row(
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
          SizedBox(width: 8.w),
          H2Text(widget.exercise.name),
        ],
      ),
    );
  }

  Widget _buildExpanded(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        SizedBox(height: 8.h),
        widget.exercise.media != null
            ? widget.exercise.media!
                .determineLoader(width: 310.w, height: 310.h)
            : Container(),
        SizedBox(height: 8.h),
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
          child: Row(
            children: [
              Column(
                children: [
                  Chirp(
                    text: 'Reps : ${widget.exercise.repetition}',
                    color: Colors.amberAccent.withOpacity(0.5),
                    style: context.theme.textTheme.titleMedium?.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Chirp(
                    text: 'Sets : ${widget.exercise.sets}',
                    color: Colors.redAccent.withOpacity(0.5),
                    style: context.theme.textTheme.titleMedium?.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Chirp(
                    text: 'Rest : ${widget.exercise.rest}',
                    color: Colors.greenAccent.withOpacity(0.5),
                    style: context.theme.textTheme.titleMedium?.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        widget.exercise.description != null ||
                (widget.exercise.description?.isEmpty ?? false)
            ? SizedBox(height: 8.h)
            : Container(),
        widget.exercise.description != null ||
                (widget.exercise.description?.isEmpty ?? false)
            ? Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: context.theme.textTheme.titleLarge?.color
                            ?.withOpacity(0.5) ??
                        Colors.grey,
                  ),
                ),
                child: H5Text(widget.exercise.description ?? ''),
              )
            : Container(),
      ],
    );
  }
}
