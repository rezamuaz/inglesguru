import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:river_player/river_player.dart';

class VideoServe extends StatefulWidget {
  const VideoServe({super.key,required  this.url,this.fit,required  this.height,required this.width,this.callbackFinish});
  final String url;
  final BoxFit? fit;
  final double height;
  final double width;
  final VoidCallback? callbackFinish;
  @override
  State<VideoServe> createState() => _VideoServeState();
}

class _VideoServeState extends State<VideoServe> {
  late BetterPlayerController _controller;
   Duration? myProgress;
  Duration? myDuration;

  @override
  void initState() {
    var config = BetterPlayerConfiguration(controlsConfiguration: BetterPlayerControlsConfiguration(showControls: false),allowedScreenSleep: false,autoDispose: true,fit: BoxFit.fill,aspectRatio: widget.width/widget.height,autoPlay: true,);
            var source = BetterPlayerDataSource(BetterPlayerDataSourceType.file, widget.url);
            _controller = BetterPlayerController( config,betterPlayerDataSource: source);
            _controller.setControlsVisibility(false);
            _controller.addEventsListener((event){
               if (event.betterPlayerEventType == BetterPlayerEventType.finished) {
             widget.callbackFinish!();
          }
             
              
            });
    super.initState();
  }

  @override
  void dispose() {
    // _controller.pause();
    // _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: widget.width/widget.height,child: BetterPlayer(controller: _controller));
  }
}