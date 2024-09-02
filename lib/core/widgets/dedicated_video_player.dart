import 'package:cached_network_image/cached_network_image.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';
import 'package:video_player/video_player.dart';

class DedicatedVideoPlayer extends StatefulWidget {
  final String url, thumbUrl;
  final double? width, height;
  final BoxFit fit;

  const DedicatedVideoPlayer({
    super.key,
    required this.url,
    required this.thumbUrl,
    this.width,
    this.height,
    required this.fit,
  });

  @override
  State<DedicatedVideoPlayer> createState() => _DedicatedVideoPlayerState();
}

class _DedicatedVideoPlayerState extends State<DedicatedVideoPlayer> {
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
            autoPlay: false,
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
    if (!_controller.value.isInitialized) {
      return Center(
          child: Padding(
        padding: EdgeInsets.all(16.w),
        child: const MoonCircularLoader(),
      ));
    }

    return Stack(
      children: [
        Positioned.fill(
          child: _controller.value.isPlaying
              ? _chewieController != null &&
                      _chewieController!
                          .videoPlayerController.value.isInitialized
                  ? Chewie(
                      controller: _chewieController!,
                    )
                  : Center(
                      child: Padding(
                      padding: EdgeInsets.all(16.w),
                      child: const MoonCircularLoader(),
                    ))
              : CachedNetworkImage(
                  imageUrl: widget.thumbUrl,
                  width: widget.width,
                  height: widget.height,
                  fit: widget.fit,
                ),
        ),
        Center(
          child: IconButton(
            onPressed: () {
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              });
            },
            icon: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
