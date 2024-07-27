import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMemberScreen extends StatelessWidget {
  final int clubId;
  const AddMemberScreen({super.key, required this.clubId});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Parent(
      body: BlocBuilder<ClubCubit, ClubState>(
        builder: (context, state) {
          return RoundedTopBackground(
            title: 'Add Member',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SearchClub(),
                SizedBox(height: 8.h),
                ListUser(users: state.members, clubId: clubId),
              ],
            ),
          );
        },
      ),
    );
  }
}
