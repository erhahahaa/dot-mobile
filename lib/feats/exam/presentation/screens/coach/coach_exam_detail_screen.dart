import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CoachExamDetailScreen extends StatefulWidget {
  final ExamModel exam;
  const CoachExamDetailScreen({super.key, required this.exam});

  @override
  State<CoachExamDetailScreen> createState() => _CoachExamDetailScreenState();
}

class _CoachExamDetailScreenState extends State<CoachExamDetailScreen> {
  @override
  void initState() {
    context
        .read<QuestionCubit>()
        .getAll(const PaginationParams(), widget.exam.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionCubit, QuestionState>(
      builder: (context, state) {
        return Parent(
          body: RoundedTopBackground(
            title: widget.exam.title,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const H1Text('Exam Detail'),
                SizedBox(height: 8.h),
                Skeletonizer(
                  enabled: state.state == BaseState.loading,
                  child: EightContainer(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        H2Text('Title : ${widget.exam.title}'),
                        if (widget.exam.dueAt != null) ...[
                          H5Text(
                              'Due date : ${widget.exam.dueAt!.toDayMonthYear()}'),
                        ],
                        if (widget.exam.description != null)
                          H5Text(
                            'Description : ${widget.exam.description}',
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                const H1Text('Questions'),
                SizedBox(height: 8.h),
                ListQuestion(
                  questions: state.questions,
                  isLoading: state.state == BaseState.loading,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
