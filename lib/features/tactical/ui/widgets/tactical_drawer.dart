import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TacticalDrawer extends StatelessWidget {
  final TacticalModel tactical;
  final List<UserModel> audiences;
  const TacticalDrawer({
    super.key,
    required this.tactical,
    required this.audiences,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Audiences',
                    style: context.theme.textTheme.titleLarge,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: audiences.length,
                itemBuilder: (context, index) {
                  final audience = audiences[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          CachedNetworkImageProvider(audience.image),
                    ),
                    title: Text(audience.name),
                    subtitle: Text(audience.email),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
