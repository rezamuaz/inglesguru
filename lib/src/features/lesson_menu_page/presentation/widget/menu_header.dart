import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({super.key,required this.url,required this.title});
  final String url;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
//         Container(
//           decoration: BoxDecoration(border: Border.all(color: Colors.black87),borderRadius: BorderRadius.circular(8)),
//           constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.3),
//           child: AspectRatio(
//             aspectRatio: 3/4,
//             child: ClipRRect(
//                           borderRadius:
//                               const BorderRadius.all(Radius.elliptical(6, 6)),
//                           child:   CachedNetworkImage(
//                     cacheManager: UnicornCache.instance,
//   imageUrl: url,
//   imageBuilder: (context, imageProvider) => Container(
//     decoration: BoxDecoration(
//       image: DecorationImage(
//           image: imageProvider,
//           fit: BoxFit.cover,
//          ),
//     ),
//   ),
//   placeholder: (context, url) => buildShimmerLoading(),
//   errorWidget: (context, url, error) => Center(child: Icon(Icons.error,size: 32,)),
// ),
//                         ),
//           ),
//         ),
        const SizedBox(height: 10,),
                    Text(title,style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
      ],
    );
  }
}