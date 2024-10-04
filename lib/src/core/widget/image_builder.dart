import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/core/local_storage/cache/cache.dart';
import 'package:sysbit/src/core/widget/fade_animation.dart';

class ImageBuilder extends StatelessWidget {
  final String url;
  final BoxFit? fit;
  final double? height;
  final double? width;
  const ImageBuilder(
      {super.key, required this.url, this.fit, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(

        future: UnicornCache.getFile(url: url),
        builder: (context, snapshot) {
if(snapshot.connectionState == ConnectionState.waiting){
return Shimmer.fromColors(child: Container(width: width,height: height,), baseColor: Colors.grey[300]!, highlightColor: Colors.grey[800]!);
}
       else if (snapshot.hasError) {
            // If there's an error, show a default image
            return SvgPicture.asset(
                Assets.svgs.errorImage,height: 30,width: 3); // Fallback asset image
          } else if (snapshot.hasData) {
            // If the image is loaded, display it
            return    Image.file(fit:fit,width: width,height: height,snapshot.data!);
          } else {
            // If there's no data, show a default image
            return SvgPicture.asset(
                Assets.svgs.errorImage,height: 30,width: 30,); // Fallback asset image
          }
        },
    );
  }
}
