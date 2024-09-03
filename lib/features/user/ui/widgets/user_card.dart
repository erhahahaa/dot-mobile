// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:dot_coaching/core/core.dart';
// import 'package:dot_coaching/features/user/user.dart';
// import 'package:dot_coaching/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:moon_design/moon_design.dart';

// class UserCard extends StatelessWidget {
//   final bool isHome;
//   final UserModel user;

//   const UserCard({
//     super.key,
//     this.isHome = true,
//     required this.user,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = context.theme;
//     return Container(
//       width: 308.w,
//       height: 120.h,
//       padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
//       decoration: BoxDecoration(
//         color: theme.cardColor,
//         borderRadius: BorderRadius.circular(16.r),
//         boxShadow: [
//           BoxShadow(
//             color: theme.colorScheme.primary.withOpacity(0.25),
//             blurRadius: 8,
//             spreadRadius: 0,
//             offset: const Offset(4, 4),
//           ),
//         ],
//       ),
//       child:
//           isHome ? _buildHome(context, theme) : _buildProfile(context, theme),
//     );
//   }

//   Widget _buildProfile(BuildContext context, ThemeData theme) {
//     return Row(
//       children: [
//         SizedBox(
//           height: 64.w,
//           child: ClipOval(
//             child: CachedNetworkImage(
//               height: 64.w,
//               imageUrl: user.image,
//               placeholder: (context, url) => const MoonCircularLoader(),
//               errorWidget: (context, url, error) => Text(
//                 error.toString(),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(width: 8.w),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             BodyMedium(user.name),
//             SizedBox(height: 4.h),
//             MoonTag(
//               borderRadius: BorderRadius.circular(144.r),
//               backgroundColor: context.moonColors?.frieza10,
//               label: BodySmall(
//                 user.expertise,
//                 color: context.moonColors?.frieza,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildHome(BuildContext context, ThemeData theme) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               context.str?.hello ?? 'Hello,',
//               style: theme.textTheme.titleMedium?.copyWith(
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             Text(
//               user.name.split(" ").first,
//               style: theme.textTheme.titleLarge?.copyWith(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(width: 20.w),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               context.str?.sport ?? 'Sport :',
//               style: theme.textTheme.titleMedium?.copyWith(
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 6.h),
//             Row(
//               children: [
//                 MoonTag(
//                   borderRadius: BorderRadius.circular(144.r),
//                   backgroundColor: context.moonColors?.frieza10,
//                   label: BodySmall(
//                     user.expertise,
//                     color: context.moonColors?.frieza,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
