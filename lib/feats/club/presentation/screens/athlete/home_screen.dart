import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
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
                        const H1Text("My Club Training"),
                        SizedBox(width: 8.w),
                        const SearchClub()
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Expanded(
                      child: ListClub(
                        clubs: state.filteredClubs,
                        padding: EdgeInsets.all(16.w),
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
