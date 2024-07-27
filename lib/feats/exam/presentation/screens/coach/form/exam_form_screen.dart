import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';

class ExamFormScreen extends StatelessWidget {
  final ExamModel? exam;
  final int clubId;
  const ExamFormScreen({
    super.key,
    this.exam,
    required this.clubId,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: RoundedTopBackground(
        title: exam == null ? 'New Exam' : 'Edit Exam',
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
