
import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:sysbit/src/features/conversation_page/presentation/widget/text_box.dart';

class BubbleBox extends StatefulWidget {
  BubbleBox(
      {super.key,
      required this.controller,
      required this.heightText,
      required this.widthText,
      required this.eng,
      required this.ind,
      required this.playAudio,  
      this.isLeftAlign = true})
      : opacity = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.0,
              0.100,
              curve: Curves.ease,
            ),
          ),
        ),
        width = Tween<double>(
          begin: 0,
          end: widthText,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.125,
              0.250,
              curve: Curves.easeInSine,
            ),
          ),
        ),
        height = Tween<double>(begin: 0, end: heightText).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              1,
              curve: Curves.easeInSine,
            ),
          ),
        ),
        rightAlign = Tween<double>(begin: widthText, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              0.4,
              curve: Curves.ease,
            ),
          ),
        ),
        leftAlign = Tween<double>(begin: 0, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              0.375,
              curve: Curves.ease,
            ),
          ),
        ),
        padding = EdgeInsetsTween(
          begin: EdgeInsets.zero,
          end: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              0.375,
              curve: Curves.ease,
            ),
          ),
        );
  final Animation<double> controller;
  final Animation<double> opacity;
  final Animation<double> width;
  final Animation<double> height;
  final Animation<EdgeInsets> padding;
  final Animation<double> rightAlign;
  final Animation<double> leftAlign;
  final double heightText;
  final double widthText;
  final String eng;
  final String ind;
  final bool isLeftAlign;
  ///Play Voice
 
  final void Function() playAudio;

  @override
  State<BubbleBox> createState() => _BubbleBoxState();
}

class _BubbleBoxState extends State<BubbleBox> with TickerProviderStateMixin {
  late AnimationController _controllerText;
  late Animation<double> _opacityIcon;
  

 
  Future<void> _playAnimation() async {
    try {
      await _controllerText.forward().orCancel;
    } on TickerCanceled {
      // The animation got canceled, probably because we were disposed.
    }
  }

  @override
  void initState() {
    super.initState();
    _controllerText = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    widget.controller.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _playAnimation();
        }
      },
    );
    _opacityIcon = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controllerText,
        curve: const Interval(
          0.2,
          1,
          curve: Curves.ease,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controllerText.dispose();
    super.dispose();
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Positioned(
      top: MediaQuery.of(context).size.height *
          0.25 *
          0.75, // 75% of the container height
      // left: 0,
      left: widget.leftAlign.value,
      right: widget.rightAlign.value,
      child: Row(
        textDirection: widget.isLeftAlign? TextDirection.ltr : TextDirection.rtl,
        children: [
          Expanded(
            child: Container(
               
                height: widget.height.value,
                padding: widget.padding.value,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black54, width: 2)),
                child: TextBox(
                    controller: _controllerText.view,
                    eng: widget.eng,
                    ind: widget.ind)),
          ),

          Transform.rotate(
            angle: widget.isLeftAlign
                ? 0 * (math.pi / 180)
                : 180 * (math.pi / 180),
            child: SizedBox(
              width: 35,
              child: AnimatedBuilder(
                animation: _controllerText,
                builder: (context, child) => IconButton(
                    onPressed: widget.playAudio,
                    icon: Icon(
                      Icons.volume_up,
                      size: 25,
                      color: Colors.black54.withOpacity(_opacityIcon.value),
                    )),
              ),
            ),
          )
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.controller, builder: _buildAnimation);
  }
}
