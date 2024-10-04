import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sysbit/src/features/conversation_page/presentation/widget/pulser_button.dart';

class NavAndRecord extends StatefulWidget {
   NavAndRecord( 
      {super.key,required this.controller,required this.record,required this.prevPage , required this.nextPage,this.curretPage} ): opacity = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.500,
              0.900,
              curve: Curves.ease,
            ),
          ),
        );
  final Function()? record;
  final int? curretPage;
  // final bool hasSpeech;
  // final bool isListening;
  final void Function()? nextPage;
  final void Function()? prevPage;
  // final double level;
  final Animation<double> opacity;
  final Animation<double> controller;
  

  @override
  State<NavAndRecord> createState() => _NavAndRecordState();
}

class _NavAndRecordState extends State<NavAndRecord> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.18,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FadeTransition(
            opacity: widget.opacity,
            child: ElevatedButton(
                onPressed: widget.prevPage,
                style: ElevatedButton.styleFrom(
                
                    padding: const EdgeInsets.all(8),
                    foregroundColor: Colors.white,
                    
                    backgroundColor:
                        widget.curretPage == 0 ? Colors.black12 : Colors.black54,
                    shape: const CircleBorder()),
                child: const Icon(
                  Icons.arrow_back,
                  size: 36,
                )),
          ),
          FadeTransition(
            opacity: widget.opacity,
            child: PulserButton(onPress: widget.record)
            
            // Container(
            //   width: 70,
            //   height: 70,
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //           blurRadius: .26,
            //           spreadRadius: 0 * 1.5,
            //           color: Colors.red.withOpacity(0.05))
            //     ],
            //     color: Colors.white,
            //     borderRadius: const BorderRadius.all(Radius.circular(50)),
            //   ),
            //   child: IconButton(
            //     onPressed: widget.record,
            //     style: ElevatedButton.styleFrom(
            //         elevation: 0,
            //         padding: const EdgeInsets.all(8),
            //         foregroundColor: 
            //             Colors.black87,
            //         backgroundColor: Colors.white,
            //         // backgroundColor: Color(0xFFFF3F3F),
            //         shape: CircleBorder(
            //             side: BorderSide(
            //                 color:  Colors.black87))),
            //     //  child: LoadingAnimationWidget.hexagonDots(color: Color(0xFFFF3F3F), size: 40),
            //     icon: const Icon(
            //       Icons.mic,
            //       size: 54,
            //     ),
            //   ),
            // ),
          ),
          FadeTransition(
            opacity: widget.opacity,
            child: ElevatedButton(
                onPressed: widget.nextPage,
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(8),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black54,
                    shape: const CircleBorder()),
                child: const Icon(
                  Icons.arrow_forward,
                  size: 36,
                )),
          )
        ],
      ),
    );
  }
}
