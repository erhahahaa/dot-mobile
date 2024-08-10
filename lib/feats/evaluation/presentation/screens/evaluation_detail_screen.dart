import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EvaluationDetailScreen extends StatelessWidget {
  final EvaluationModel evaluation;
  const EvaluationDetailScreen({super.key, required this.evaluation});

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: RoundedTopBackground(
        title: '${evaluation.athlete?.name} Evaluation',
        showBackButton: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H2Text("Athlete Information"),
            SizedBox(height: 8.h),
            EightContainer(
              width: double.infinity,
              margin: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H5Text('Name : ${evaluation.athlete?.name}'),
                  SizedBox(height: 2.h),
                  H5Text('Age : ${evaluation.athlete?.bornDate.toAge()}'),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            H2Text("Coach Information"),
            SizedBox(height: 8.h),
            EightContainer(
              width: double.infinity,
              margin: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H5Text('Name : ${evaluation.coach?.name}'),
                  SizedBox(height: 2.h),
                  H5Text('Email : ${evaluation.coach?.email}'),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            H2Text("Evaluation Result"),
            SizedBox(height: 8.h),
            EightContainer(
              width: double.infinity,
              margin: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H5Text('Exam Name : ${evaluation.exam?.title}'),
                  SizedBox(height: 2.h),
                  ListView.builder(
                    itemCount: evaluation.evaluations.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final eval = evaluation.evaluations[index];
                      return EightContainer(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            H5Text('${index + 1}. ${eval.questionName}'),
                            SizedBox(height: 2.h),
                            H5Text('Result : ${eval.answer}'),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
