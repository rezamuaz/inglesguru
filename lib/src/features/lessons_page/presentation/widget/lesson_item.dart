import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/features/common/button.dart';

class LessonItemWidget extends StatefulWidget {
  const LessonItemWidget(
      {required this.index, super.key, this.onTap, this.url, this.title});
  final VoidCallback? onTap;
  final String? url;
  final String? title;
  final int index;

  @override
  State<LessonItemWidget> createState() => _LessonItemWidgetState();
}

class _LessonItemWidgetState extends State<LessonItemWidget> {
  TextStyle styleReading = GoogleFonts.inter(
      fontSize: 12, fontStyle: FontStyle.italic, color: Colors.black45);
  @override
  Widget build(BuildContext context) {
    return widget.title!.isNotEmpty
        ? Container(
          height: MediaQuery.of(context).size.height * 0.18,
          margin: const EdgeInsets.only(top: 5),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.26,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black54, width: 1.5)),
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(6, 6)),
                  child:   CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: widget.url ?? "",
                      cacheManager: DefaultCacheManager(),
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error)),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Arrow Button
                        Flexible(
                            child: Text(
                          widget.title ?? "",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                        const Button(
                          backgroundColor: Colors.white,
                          widget: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                    Text("Completed 100%",
                        style: GoogleFonts.inter(fontSize: 12)),
                   
                    Flexible(
                        child: Text(
                      "Lorem ipsum odor amet, consectetuer adipiscing elit. Elementum dolor accumsan sodales duis nam ut ridiculus senectus. Sapien platea ipsum nunc scelerisque fusce class aliquet. Proin torquent aenean auctor diam feugiat vehicula. Potenti malesuada laoreet lorem aliquam odio.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                      ),
                    )),
                    SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Chart Button
                              Button(
                                widget: const Icon(
                                  Icons.leaderboard_sharp,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                radius: BorderRadius.circular(20),
                                backgroundColor: Colors.black87,
                                callback: () {},
                              ),
                              //Video Button
                              Button(
                                widget: const Icon(
                                  Icons.videocam_rounded,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                radius: BorderRadius.circular(20),
                                backgroundColor: Colors.black87,
                                callback: () {},
                              ),
                              //Quiz Button
                              Material(
                                  child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black87,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 0,vertical:6),
                                            child: Text(
                                              "QUIZ",
                                              style: GoogleFonts.inter(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ))))
                            ],
                          ),
                        ),
                        //Play Buttton
                        Flexible(
                          flex: 3,
                          child: Button(
                            callback: widget.onTap,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                            radius: BorderRadius.circular(10),
                            widget: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Lesson ${widget.index+1}",
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                Icon(Icons.play_arrow,size: 20,)
                              ],
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
        : const SizedBox();
  }
}
