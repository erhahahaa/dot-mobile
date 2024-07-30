import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ContextExtensions on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  ThemeData get theme => Theme.of(this);

  Strings? get str => Strings.of(this);

  Locale get locale => Localizations.localeOf(this);

  Color containerColor(double opacity) =>
      theme.colorScheme.primaryContainer.withOpacity(opacity);

  Widget pickImageDialog({
    required Function()? galleryTap,
    required Function()? cameraTap,
  }) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: theme.colorScheme.onPrimary,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: galleryTap,
              child: const ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Gallery'),
              ),
            ),
            InkWell(
              onTap: cameraTap,
              child: const ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Camera'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
