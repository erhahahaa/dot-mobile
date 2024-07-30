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
    context.read<ExerciseCubit>().getAll(const PaginationParams(), widget.program.id);
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
              Container(
                padding: EdgeInsets.all(8.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.containerColor(0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H2Text('Name : ${widget.program.name}'),
                    H5Text(
                        'Start date : ${widget.program.startDate!.toDayMonthYear()}'),
                    H5Text(
                      'End date : ${widget.program.endDate!.toDayMonthYear()}',
                    ),
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
