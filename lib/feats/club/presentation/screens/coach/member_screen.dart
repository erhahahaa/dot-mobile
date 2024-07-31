import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberScreen extends StatefulWidget {
  final int clubId;
  const MemberScreen({super.key, required this.clubId});

  @override
  State<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  String selectedRole = 'Athlete';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubCubit, ClubState>(
      builder: (context, state) {
        return Parent(
          body: RefreshIndicator(
            onRefresh: () => context
                .read<ClubCubit>()
                .getMembers(const PaginationParams(), widget.clubId),
            child: RoundedTopBackground(
              title: context.str?.members ?? 'Members',
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H1Text(
                      context.str?.overview ?? 'Overview',
                    ),
                    SizedBox(height: 8.h),
                    MemberOverviewCard(
                      totalMembers: state.members.length,
                      totalAthletes: state.members.sumTotalAthletes(),
                      totalCoaches: state.members.sumTotalCoaches(),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        H1Text(
                          context.str?.members ?? 'Members',
                        ),
                        SizedBox(width: 8.w),
                        ClubSearchBar(
                          onSearch: context.read<ClubCubit>().searchMember,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    ListMember(
                      members: state.filteredMembers,
                      clubId: widget.clubId,
                      isLoading: state.state == BaseState.loading,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _showEditDialog(BuildContext context) {
    String currentSelectedRole = selectedRole;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            "Edit Member Role",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButton<String>(
                value: currentSelectedRole,
                dropdownColor: Colors.white,
                onChanged: (String? newValue) {
                  setState(
                    () {
                      currentSelectedRole = newValue!;
                    },
                  );
                },
                items:
                    <String>['Coach', 'Athlete'].map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xff2EC12B)),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedRole = currentSelectedRole;
                    });
                    // Save the new role here, e.g., update the user's role in the database
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xffF15858)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    context.str?.cancel ?? 'Cancel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Delete Member",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(
            "Are you sure want to delete this member?",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xffF15858)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xff2EC12B)),
                  ),
                  onPressed: () {
                    // Perform delete action here
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
