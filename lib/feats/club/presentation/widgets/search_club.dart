import 'package:dot_coaching/feats/feats.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchClub extends StatefulWidget {
  const SearchClub({super.key});

  @override
  State<SearchClub> createState() => _SearchClubState();
}

class _SearchClubState extends State<SearchClub> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    _controller = TextEditingController();
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 119.w,
      height: 30.h,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: _controller,
        focusNode: _focusNode,
        textInputAction: TextInputAction.search,
        onChanged: (value) => EasyDebounce.debounce(
          'search_club',
          const Duration(milliseconds: 100),
          () => context.read<ClubCubit>().search(value),
        ),
        onSubmitted: (value) => context.read<ClubCubit>().search(value),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(),
          hintText: 'Search...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color(0xFF868FE3),
          prefixIcon: Icon(Icons.search, color: Colors.white, size: 16.sp),
        ),
      ),
    );
  }
}
