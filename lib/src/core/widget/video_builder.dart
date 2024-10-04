import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:river_player/river_player.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/core/local_storage/cache/cache.dart';
import 'package:sysbit/src/core/widget/video_serve.dart';

class VideoBuilder extends StatelessWidget {
  final String url;
  final BoxFit? fit;
  final double height;
  final double width;
  final VoidCallback? callbackFinish;
  const VideoBuilder(
      {super.key, required this.url, this.fit, this.height= 16, this.width = 9,this.callbackFinish});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(

        future: UnicornCache.getFile(url: url),
        builder: (context, snapshot) {
if(snapshot.connectionState == ConnectionState.waiting){
return Shimmer.fromColors(child: SizedBox(width: width,height: height,), baseColor: Colors.grey[300]!, highlightColor: Colors.grey[800]!);
}
       else if (snapshot.hasError) {
            // If there's an error, show a default image
            return SvgPicture.asset(
                Assets.svgs.errorImage,height: 30,width: 3); // Fallback asset image
          } else if (snapshot.hasData) {
        
           
            // If the image is loaded, display it
            return    VideoServe(url: snapshot.data!.absolute.path, height: height, width: width,callbackFinish: callbackFinish,);
          } else {
            // If there's no data, show a default image
            return SvgPicture.asset(
                Assets.svgs.errorImage,height: 30,width: 30,); // Fallback asset image
          }
        },
    );
  }
}
