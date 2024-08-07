import 'package:dot_coaching/utils/utils.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatefulWidget {
  final Function(String) onSearch;
  final double? width, height;
  final int? debounceTime;

  const CustomSearchBar({
    super.key,
    required this.onSearch,
    this.width,
    this.height,
    this.debounceTime,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
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
      width: widget.width ?? 119.w,
      height: widget.height ?? 30.h,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: _controller,
        focusNode: _focusNode,
        textInputAction: TextInputAction.search,
        onChanged: (value) => EasyDebounce.debounce(
          'search_club',
          Duration(milliseconds: widget.debounceTime ?? 100),
          () => widget.onSearch(
            _controller.text,
          ),
        ),
        onSubmitted: (value) => widget.onSearch(
          _controller.text,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8.w),
          hintText: context.str?.search ?? 'Search',
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
