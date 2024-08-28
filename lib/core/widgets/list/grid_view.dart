import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewBuilder<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item) itemBuilder;
  final ScrollController? scrollController;
  final double? height;

  const GridViewBuilder({
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
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: (1 / 1.65).sp,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) => itemBuilder(context, items[index]),
      ),
    );
  }
}

class GridViewBuilderTile extends StatelessWidget {
  final EdgeInsetsGeometry? padding, margin;
  final String? titleText, imageUrl;
  final Widget? child, media;
  final VoidCallback? onTap;

  const GridViewBuilderTile({
    super.key,
    this.padding,
    this.margin,
    this.titleText,
    this.imageUrl,
    this.child,
    this.onTap,
    this.media,
  });

  @override
  Widget build(BuildContext context) {
    return EightCard(
      padding: padding,
      // margin: margin ?? EdgeInsets.zero,
      // width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imageUrl != null && media == null) ...[
            Center(
              child: CachedNetworkImage(
                imageUrl: imageUrl!,
                fit: BoxFit.cover,
                width: 150.h,
                height: 150.h,
              ),
            ),
          ] else ...[
            media!,
          ],
          if (titleText != null) ...[
            InkWell(onTap: onTap, child: TitleSmall(titleText)),
          ],
          if (child != null) child!,
        ],
      ),
    );
  }
}
