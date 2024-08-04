import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoachAddMemberScreen extends StatelessWidget {
  final int clubId;

  const CoachAddMemberScreen({
    super.key,
    required this.clubId,
  });

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: BlocBuilder<ClubCubit, ClubState>(
        builder: (context, state) {
          return RoundedTopBackground(
            title: context.str?.addMember ?? 'Add Member',
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClubSearchBar(
                    onSearch: context.read<ClubCubit>().searchUser,
                    debounceTime: 500,
                    height: 48.h,
                  ),
                  SizedBox(height: 8.h),
                  ListUser(
                    users: state.users,
                    clubId: clubId,
                    showUsername: true,
                    isLoading: state.state == BaseState.loading,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
