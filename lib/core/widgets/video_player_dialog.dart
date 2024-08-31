import 'package:chewie/chewie.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerDialog extends StatefulWidget {
  final String url, name;
  const VideoPlayerDialog({
    super.key,
    required this.url,
    required this.name,
  });

  @override
  State<VideoPlayerDialog> createState() => _VideoPlayerDialogState();
}

class _VideoPlayerDialogState extends State<VideoPlayerDialog> {
  late VideoPlayerController _controller;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )..initialize().then((_) {
        setState(() {
          _chewieController = ChewieController(
            videoPlayerController: _controller,
            autoPlay: true,
            looping: false,
          );
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 64.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(16.h),
          Row(
            children: [
              Gap(16.w),
              TitleMedium('${widget.name.maxChar(20)}...'),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
              Gap(8.w),
            ],
          ),
          _chewieController != null &&
                  _chewieController!.videoPlayerController.value.isInitialized
              ? Expanded(
                  child: Chewie(
                    controller: _chewieController!,
                  ),
                )
              : Center(
                  child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: const MoonCircularLoader(),
                )),
        ],
      ),
    );
  }
}
