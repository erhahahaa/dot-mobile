// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:dot_coaching/core/constants/constants.dart';
// import 'package:dot_coaching/core/widgets/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:moon_design/moon_design.dart';

// class ColumnList<T> extends StatelessWidget {
//   final List<T> items;
//   final Widget Function(BuildContext context, T item) itemBuilder;

//   const ColumnList({
//     super.key,
//     required this.items,
//     required this.itemBuilder,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ContainerWrapper(
//       child: Column(
//         children: items.map((item) => itemBuilder(context, item)).toList(),
//       ),
//     );
//   }
// }

// class ColumnListTile extends StatelessWidget {
//   final EdgeInsetsGeometry? padding, margin;
//   final String? titleText, subtitleText, imageUrl;
//   final Widget? trailing, leading, title, subtitle;
//   final void Function()? onTap;
//   final bool enabled;

//   const ColumnListTile({
//     super.key,
//     this.padding,
//     this.margin,
//     this.titleText,
//     this.subtitleText,
//     this.imageUrl,
//     this.trailing,
//     this.leading,
//     this.title,
//     this.subtitle,
//     this.onTap,
//     this.enabled = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Hero(
//       tag: hashCode,
//       child: GestureDetector(
//         onTap: onTap,
//         child: ContainerWrapper(
//           padding: padding ?? EdgeInsets.zero,
//           margin: margin ?? EdgeInsets.all(4.w),
//           color: context.moonColors?.frieza.withOpacity(0.025),
//           child: ListTile(
//             enabled: enabled,
//             leading: leading ??
//                 CachedNetworkImage(
//                   imageUrl: imageUrl ?? AppConstants.SPORT_IMAGE,
//                   width: 36.h,
//                   height: 36.h,
//                   imageBuilder: (context, imageProvider) {
//                     return CircleAvatar(
//                       backgroundImage: imageProvider,
//                     );
//                   },
//                 ),
//             title: title ?? TitleSmall(titleText),
//             subtitle: subtitle ?? BodySmall(subtitleText),
//             trailing: trailing,
//           ),
//         ),
//       ),
//     );
//   }
// }
