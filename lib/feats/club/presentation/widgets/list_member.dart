import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListMember extends StatelessWidget {
  final List<UserModel> members;
  final ClubModel? club;
  final int clubId;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;
  final bool? evaluate;

  const ListMember({
    super.key,
    required this.members,
    this.club,
    required this.clubId,
    this.padding,
    required this.isLoading,
    this.evaluate,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    if (isLoading) {
      final fakeUser = List.generate(8, (index) => UserModel.fake()).toList();

      return EightContainer(
        height: 550.h,
        child: Skeletonizer(
          child: ListView.builder(
            itemCount: fakeUser.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return UserContainer(
                user: fakeUser[index],
                clubId: clubId,
                withPopUp: false,
                isCoach: fakeUser[index].role == UserRole.coach,
              );
            },
          ),
        ),
      );
    }

    if (members.isEmpty) {
      return EightContainer(
        child: Center(
          child: Text(
            context.str?.noMembersFound ?? 'No members found',
            style: theme.textTheme.bodyLarge,
          ),
        ),
      );
    }
    return EightContainer(
      child: ListView.builder(
        itemCount: members.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final user = members[index];
          return UserContainer(
            user: user,
            clubId: clubId,
            withPopUp: true,
            isCoach: members[index].role == UserRole.coach,
            evaluate: evaluate != null
                ? ElevatedButton(
                    onPressed: () {
                      _showPickExamDialog(context, club!, user);
                    },
                    child: Text(
                      'Evaluate',
                      style: context.theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  )
                : null,
          );
        },
      ),
    );
  }

  void _showPickExamDialog(
      BuildContext context, ClubModel club, UserModel user) {
    showDialog(
      context: context,
      builder: (_) {
        return BlocProvider.value(
          value: context.read<ExamCubit>(),
          child: BlocBuilder<ExamCubit, ExamState>(
            builder: (context, state) {
              return Dialog(
                insetPadding: EdgeInsets.all(16.w),
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const H1Text('Pick Exam'),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => Navigator.of(context).pop(),
                          )
                        ],
                      ),
                      SizedBox(height: 8.h),
                      CustomSearchBar(
                        onSearch: context.read<ExamCubit>().searchExam,
                        width: double.infinity,
                        height: 42.h,
                      ),
                      SizedBox(height: 8.h),
                      ListExam(
                        exams: state.filteredExams,
                        isLoading: isLoading,
                        club: club,
                        evaluate: true,
                        user: user,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
