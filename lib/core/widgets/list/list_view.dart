import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewBuilder<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item) itemBuilder;
  final ScrollController? scrollController;
  final double? height;

  const ListViewBuilder({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.scrollController,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerWrapper(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      height: height,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        controller: scrollController,
        itemCount: items.length,
        itemBuilder: (context, index) => itemBuilder(context, items[index]),
      ),
    );
  }
}

class ListViewBuilderTile extends StatelessWidget {
  final EdgeInsetsGeometry? padding, margin;
  final String? titleText, subtitleText, imageUrl;
  final Widget? trailing, leading, title, subtitle;
  final void Function()? onTap;
  final bool enabled;

  const ListViewBuilderTile({
    super.key,
    this.padding,
    this.margin,
    this.titleText,
    this.subtitleText,
    this.imageUrl,
    this.trailing,
    this.leading,
    this.title,
    this.subtitle,
    this.onTap,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: EightCard(
        padding: padding ?? EdgeInsets.zero,
        margin: margin ?? EdgeInsets.all(4.w),
        // color: context.moonColors?.frieza.withOpacity(0.2),
        child: ListTile(
          enabled: enabled,
          leading: leading ??
              CachedNetworkImage(
                imageUrl: imageUrl ?? AppConstants.SPORT_IMAGE,
                width: 36.h,
                height: 36.h,
                imageBuilder: (context, imageProvider) {
                  return CircleAvatar(
                    backgroundImage: imageProvider,
                  );
                },
              ),
          title: title ?? TitleSmall(titleText),
          subtitle: subtitle ?? BodySmall(subtitleText),
          trailing: trailing,
        ),
      ),
    );
  }
}
