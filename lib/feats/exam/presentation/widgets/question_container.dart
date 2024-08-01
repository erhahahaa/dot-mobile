import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionContainer extends StatelessWidget {
  final QuestionModel question;
  const QuestionContainer({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      margin: EdgeInsets.only(bottom: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2Text(
            'Question ${question.order + 1} :',
            fontWeight: FontWeight.normal,
          ),
          SizedBox(height: 4.h),
          H3Text(question.question),
        ],
      ),
    );
  }
}
