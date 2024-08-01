import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgramDetailScreen extends StatefulWidget {
  final ProgramModel program;
  const ProgramDetailScreen({super.key, required this.program});

  @override
  State<ProgramDetailScreen> createState() => _ProgramDetailScreenState();
}

class _ProgramDetailScreenState extends State<ProgramDetailScreen> {
  @override
  void initState() {
    context
        .read<ExerciseCubit>()
        .getAll(const PaginationParams(), widget.program.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: RoundedTopBackground(
        title: widget.program.name,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1Text(context.str?.programDetail ?? 'Program Detail'),
              SizedBox(height: 8.h),
              EightContainer(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H2Text('Name : ${widget.program.name}'),
                    if (widget.program.startDate != null) ...[
                      H5Text(
                        'Start date : ${widget.program.startDate!.toDayMonthYear()}',
                      ),
                    ],
                    if (widget.program.endDate != null) ...[
                      H5Text(
                        'End date : ${widget.program.endDate!.toDayMonthYear()}',
                      ),
                    ]
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              H1Text(context.str?.exercise ?? 'Exercises'),
              SizedBox(height: 8.h),
              BlocBuilder<ExerciseCubit, ExerciseState>(
                builder: (context, state) {
                  return ListExercise(
                    exercises: state.exercises,
                    isLoading: state.state == BaseState.loading,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
