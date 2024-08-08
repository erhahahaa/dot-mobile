import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/helpers/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AthleteTacticalScreen extends StatelessWidget {
  const AthleteTacticalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TacticalCubit, TacticalState>(
      builder: (context, state) {
        return Parent(
          body: RoundedTopBackground(
            title: 'Tactical',
            // centerTitle: true,
            showBackButton: false,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            suffix: InkWell(
              onTap: () => context.read<TacticalCubit>().getAll(),
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Icon(Icons.refresh, color: Colors.black),
              ),
            ),
            child: RefreshIndicator(
              onRefresh: () => context.read<TacticalCubit>().init(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomSearchBar(
                      width: double.infinity,
                      height: 36.h,
                      onSearch: (String val) {
                        context.read<TacticalCubit>().search(val);
                      },
                    ),
                    ListTactical(
                      tacticals: state.filteredTacticals,
                      isLoading: state.state == BaseState.loading,
                      isCoach: false,
                      margin: EdgeInsets.only(top: 16.h),
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
}
