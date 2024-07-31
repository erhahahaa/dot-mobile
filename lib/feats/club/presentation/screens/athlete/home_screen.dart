import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubCubit, ClubState>(
      builder: (context, state) {
        return Parent(
          body: SkewedRightBackground(
            children: [
              Positioned(
                top: 60.h,
                left: 18.w,
                child: UserCard(
                  user: state.user,
                ),
              ),
              Positioned(
                top: 180.h,
                left: 22.w,
                right: 22.w,
                bottom: 72.h,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        H1Text(
                          context.str?.myClub ?? 'My Club',
                        ),
                        SizedBox(width: 8.w),
                        ClubSearchBar(
                          onSearch: context.read<ClubCubit>().searchClub,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Expanded(
                      child: ListClub(
                        clubs: state.filteredClubs,
                        padding: EdgeInsets.all(16.w),
                        isLoading: state.state == BaseState.loading,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
