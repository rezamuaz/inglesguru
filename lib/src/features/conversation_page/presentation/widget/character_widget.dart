import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sysbit/src/core/widget/image_builder.dart';
import 'package:sysbit/src/features/conversation_page/presentation/widget/bubble_box.dart';

class CharacterWidget extends StatefulWidget {
  const CharacterWidget(
      {super.key,
      required this.image,
      this.eng = "",
      this.ind = "",
      this.isLeftAlign = true,this.lastWord = "",this.voiceUrl = "",required this.playAudio});
  final String image;
  final String eng;
  final String ind;
  final bool isLeftAlign;
  final String lastWord;
  final String voiceUrl;
  final void Function() playAudio;
 
  

  @override
  State<CharacterWidget> createState() => _CharacterWidgetState();
}

class _CharacterWidgetState extends State<CharacterWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  double _heightWidget({String eng = "", String ind = ""}) {
   double heightInd = 30;
   double heightEng = 30;
   if(eng.length >= 25){
    heightEng = (eng.length / 25).round() * 30;
   }
   if(ind.length >= 20){
    heightInd = (ind.length / 20).round() * 25;
   }
     
    return heightInd + heightEng + 16;
  }

  Future<void> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
    } on TickerCanceled {
      // The animation got canceled, probably because we were disposed.
    }
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _playAnimation();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.isLeftAlign ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        width: MediaQuery.of(context).size.width * 0.80,
        height: MediaQuery.of(context).size.height * 0.35,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // First Character
            Positioned(
              left:  widget.isLeftAlign ? MediaQuery.of(context).size.width*0.1 : MediaQuery.of(context).size.width*0.3,
              child: ImageBuilder(
                  height: MediaQuery.of(context).size.height * 0.25,
                  url: widget.image),
            ),   
            BubbleBox(
             playAudio: widget.playAudio,
              isLeftAlign: widget.isLeftAlign,
                controller: _controller.view,
                widthText: MediaQuery.of(context).size.width,
                heightText: _heightWidget(eng: widget.eng, ind: widget.ind),
                eng: widget.eng,
                ind: widget.ind)
          ],
        ),
      ),
    );
  }
}
