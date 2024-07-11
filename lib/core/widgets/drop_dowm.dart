import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDown<T> extends StatefulWidget {
  final T value;
  final List<DropdownMenuItem<T>> items;
  final bool hintIsVisible;
  final String? hint;
  final ValueChanged<T?>? onChanged;
  final Widget? prefixIcon;

  const DropDown({
    super.key,
    required this.value,
    required this.items,
    this.hint,
    required this.onChanged,
    this.hintIsVisible = true,
    this.prefixIcon,
  });

  @override
  State<DropDown<T>> createState() => _DropDownState();
}

class _DropDownState<T> extends State<DropDown<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: widget.hintIsVisible,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.w,
              ),
              child: Text(
                widget.hint ?? '',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
              ),
            ),
          ),
          SizedBox(height: 4.h),
          ButtonTheme(
            key: widget.key,
            alignedDropdown: true,
            padding: EdgeInsets.zero,
            child: DropdownButtonFormField<T>(
              isExpanded: true,
              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
              icon: const Icon(Icons.arrow_drop_down),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                isDense: true,
                isCollapsed: true,
                filled: true,
                fillColor: Colors.white,
                prefixIcon: SizedBox(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                        ),
                        child: widget.prefixIcon,
                      ),
                      // vertical line,
                      Container(
                        width: 1,
                        height: 24.h,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                prefixIconConstraints: BoxConstraints(
                  minHeight: 24.h,
                  minWidth: 24.h,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 16.h,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    4.r,
                  ),
                  borderSide: BorderSide(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(
                    4.r,
                  ),
                  borderSide: BorderSide(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
                errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).extension<AppColors>()!.error!,
                    ),
                focusedErrorBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide(
                    color: Theme.of(context).extension<AppColors>()!.error!,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide(
                    color: Theme.of(context).extension<AppColors>()!.error!,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide(
                    color: context.isDarkMode
                        ? Colors.grey[700]!
                        : Colors.grey[300]!,
                  ),
                ),
              ),
              value: widget.value,
              items: widget.items,
              onChanged: widget.onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
