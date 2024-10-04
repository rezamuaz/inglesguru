import 'package:flutter/material.dart';
import 'package:river_player/river_player.dart';

class TutorialPlayer extends StatefulWidget {
  const TutorialPlayer({super.key,required this.controller});
   final BetterPlayerController controller;
  @override
  State<TutorialPlayer> createState() => _TutorialPlayerState();
}

class _TutorialPlayerState extends State<TutorialPlayer> {
   late BetterPlayerController _betterPlayerController ;

  @override
  void initState() {
    _betterPlayerController = widget.controller;
      BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      
      "https://inglesguru.com/api/m/file/video/T0101/video.m3u8",
      cacheConfiguration: const BetterPlayerCacheConfiguration(
        useCache: true,
        key: "T0101"

      ),
       useAsmsTracks: true
    );
    _betterPlayerController.setupDataSource(dataSource);
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return BetterPlayer(controller: _betterPlayerController);
  }
}