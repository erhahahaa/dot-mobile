import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CoachMemberScreen extends StatefulWidget {
  final int clubId;
  const CoachMemberScreen({super.key, required this.clubId});

  @override
  State<CoachMemberScreen> createState() => _CoachMemberScreenState();
}

class _CoachMemberScreenState extends State<CoachMemberScreen> {
  String selectedRole = 'Athlete';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubCubit, ClubState>(
      builder: (context, state) {
        final coach =
            state.filteredMembers.where((e) => e.id == state.user.id).toList();
        log.e('Coach: $coach');
        log.e('Coach: ${state.user}');
        return Parent(
          floatingActionButton: FloatingButtonExtended(
            onPressed: () => context.pushNamed(
              AppRoutes.coachAddMember.name,
              pathParameters: {
                'clubId': widget.clubId.toString(),
              },
            ),
            text: 'Add Member',
            isDisabled: state.state == BaseState.loading,
            isLoading: state.state == BaseState.loading,
          ),
          body: RefreshIndicator(
            onRefresh: () => context
                .read<ClubCubit>()
                .getMembers(const PaginationParams(), widget.clubId),
            child: RoundedTopBackground(
              title: context.str?.members ?? 'Members',
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
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
                        CustomSearchBar(
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
