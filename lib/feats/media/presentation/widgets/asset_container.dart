import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetContainer extends StatelessWidget {
  final MediaModel media;
  const AssetContainer({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: context.theme.colorScheme.primaryContainer.withOpacity(0.1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: media.determineLoader(width: 128.w, height: 128.w),
          ),
          const Divider(),
          Text(
            media.name.maxChar(length: 15),
            style: context.theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Icon(
                  Icons.download,
                  size: 16.sp,
                ),
                onTap: () {
                  context.read<MediaCubit>().download(media);
                },
              ),
              SizedBox(width: 16.w),
              InkWell(
                child: Icon(
                  Icons.info,
                  size: 16.sp,
                ),
                onTap: () {
                  showAdaptiveDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Asset Info'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: ${media.name}'),
                            Text('Type: ${media.type.value}'),
                            Text('Size: ${media.fileSize}'),
                            Row(
                              children: [
                                Expanded(
                                    child:
                                        Text('URL: ${media.url.sanitize()}')),
                                InkWell(
                                  child: const Icon(
                                    Icons.copy,
                                  ),
                                  onTap: () {
                                    media.url.sanitize().toClipboard();
                                    'Copied to clipboard'
                                        .toToastSuccess(context);
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
