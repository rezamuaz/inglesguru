

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:sysbit/src/core/utils/utils.dart';
import 'package:sysbit/src/features/conversation_page/presentation/blocs/speech_checker_bloc.dart';
import 'package:sysbit/src/features/conversation_page/presentation/cubit/speech_text_cubit.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sysbit/src/features/conversation_page/presentation/widget/circular_countdown/circular_countdown_time.dart';

typedef MyBuilder = void Function(
    BuildContext context, void Function() soundWave);

class RecorderChildBottomSheet extends StatefulWidget {
  const RecorderChildBottomSheet({super.key, required this.voiceUrl});
  final String voiceUrl;

  @override
  State<RecorderChildBottomSheet> createState() =>
      _RecorderChildBottomSheetState();
}

class _RecorderChildBottomSheetState extends State<RecorderChildBottomSheet> {
  late AudioPlayer player = AudioPlayer();
   final int _duration = 10;
  final CountDownController _controller = CountDownController();
   SpeechToText? speech;
  late void Function() soundWave;
  double minSoundLevel = 50000;
  double maxSoundLevel = -50000;
  String lastStatus = '';
  bool _logEvents = true;
  double level = 0.0;
  bool finalResult = false;
  bool _listenLoop = false;
  String lastHeard = '';
  StringBuffer totalHeard = StringBuffer();
  bool runningMic = false;
  int totalOriginWord =0;

  // final SpeechToText speech = SpeechToText();
  String originText = "";

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // initSpeechState();
    });

    super.initState();
  }

  @override
  void didChangeDependencies() {
    final SpeechTextCubit textCubit = BlocProvider.of<SpeechTextCubit>(context);

    originText = textCubit.state;
    setState(() {
      totalOriginWord =  Utils.countWords(originText);
    });
    
    super.didChangeDependencies();
  }

  Future<void> init() async {
    player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      // print('A stream error occurred: $e');
    });
  }

  void _onStatus(String status) {
    if ('done' == status) {
      // print('onStatus(): $status ');
      startListening();
    }
  }

  void startListening({bool forced = false}) async {
    if (forced) {
      setState(() {
        _listenLoop = !_listenLoop;
      });
    }
    if (!_listenLoop) return;
    // print('startListening()');
    speech = SpeechToText();

    bool _available = await speech!.initialize(
      onStatus: _onStatus,
      //onError: (val) => print('onError: $val'),
      onError: (val) => onError(val),
      debugLogging: true,
      
    );
    if (_available) {
      // print('startListening() -> _available = true');
      await listen();
    } else {
      // print('startListening() -> _available = false');
    }
  }

  Future listen() async {
    print('speech!.listen()');
    speech!.listen(
      onResult: (val) => onResult(val),
      localeId: "en_US",
      
    ); // Doesn't do anything
  }

  void onError(SpeechRecognitionError val) async {
    // print('onError(): ${val.errorMsg}');
  }

  void onResult(SpeechRecognitionResult val) async {
    // print('onResult()');
    // print('val.alternates ${val.alternates}');
    if (val.finalResult) {
      setState(() {
        lastHeard = val.recognizedWords;
        totalHeard.write(lastHeard);
        totalHeard.write(" ");
      });
      var heard  = Utils.countWords(totalHeard.toString());
      if(heard >= totalOriginWord){
        setState(() {
          _listenLoop = false;
          _controller.pause();
          _controller.reset();
        });
      }
    }
  }


 

  @override
  void dispose() {
   
    super.dispose();
  }

  // stopListening() async {
  //   await speech.cancel();
  //   await speech.stop();
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pop(context);
      },
      child: BlocBuilder<SpeechCheckerBloc, SpeechCheckerState>(
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.fromBorderSide(BorderSide(
                  width: 2,
                  color: state.when(
                      initial: () => Colors.black54,
                      loading: () => Colors.black54,
                      loaded: (data) => data.textColor!,
                      back: (data) => data.textColor!))),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -10,
                  left: -10,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    
                    Expanded(
                      child:
                          Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              BlocBuilder<SpeechCheckerBloc, SpeechCheckerState>(
                                                      builder: (context, state) {
                              return state.when(
                                  initial: () =>
                                      const CircularProgressIndicator(),
                                  loading: () => const Center(
                                      child: CircularProgressIndicator()),
                                  loaded: (data) => Center(
                                        child: Text(
                                          data.text ?? "",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                              color: data.textColor,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                  back: (data) => Center(
                                        child: Text(
                                          data.text ?? "",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                              color: data.textColor,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ));
                                                      },
                                                    ),
                                                  totalHeard.toString().isEmpty? const SizedBox() : Text(totalHeard.toString(),style: GoogleFonts.inter(fontStyle: FontStyle.italic)),
                            ],
                          ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () async {
                              await player.setUrl(widget.voiceUrl);
                              player.play();
                            },
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(8),
                                foregroundColor: Colors.black54,
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(
                                    side: BorderSide(
                                        color: Colors.black54, width: 2))),
                            child: const Icon(
                              Icons.volume_up,
                              size: 50,
                            )),
                       
                         GestureDetector(
                          onTap: () {
                            print(_controller.getTime());
                            if(_controller.getTime() == '0' || _controller.getTime() == '10'){
                             
                               _controller.start();
                               runningMic = true;
                            }
                           
                           
                          },
                           child: CircularCountDownTimer(
                                duration: 10,

                                initialDuration: 0,
                                controller: _controller,
                                width: 65,
                                height: 65,
                                ringColor: Colors.grey[300]!,
                                ringGradient: null,
                                fillColor: Colors.red[100]!,
                                fillGradient: null,
                                repeateIcon: runningMic? LoadingAnimationWidget.staggeredDotsWave(color: Colors.red, size: 30) : const Icon(Icons.mic,color: Colors.red,size: 35,),
                                initialIcon: runningMic? LoadingAnimationWidget.staggeredDotsWave(color: Colors.red, size: 30) : const Icon(Icons.mic,color: Colors.red,size: 35,),
                                backgroundColor: Colors.white,
                                backgroundGradient: null,
                                strokeWidth: 5.0,
                                strokeCap: StrokeCap.round,
                                textStyle: const TextStyle(
                                    fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                textFormat: CountdownTextFormat.S,
                                isReverse: false,
                                isReverseAnimation: false,
                                isTimerTextShown: true,
                                autoStart: false,
                                
                                onStart: () {
                                   startListening(forced: true);
                                },
                                onComplete: ()async {
                                    startListening(forced: true);
                                    await Future.delayed(const Duration(milliseconds: 300),() {
                                      if(context.mounted){
                                        context.read<SpeechCheckerBloc>().add(SpeechCheckerEvent.check(lastword: totalHeard.toString(),originText: originText));
                                        setState(() {
                                          totalHeard.clear();
                                          runningMic = false;
                                        });
                                        _controller.reset();
                                      }
                                       
                                    },);
                                   
                                },
                                onChange: (String timeStamp) {
                                   log('Countdown Changed $timeStamp');
                                },
                              
                                
                            ),
                         ),
                       
                        // BlocBuilder<SpeechCheckerBloc, SpeechCheckerState>(
                        //   builder: (context, state) {
                        //     return ElevatedButton(
                        //         onPressed: () {
                                  
                        //         },
                        //         style: ElevatedButton.styleFrom(
                        //             padding: const EdgeInsets.all(8),
                        //             foregroundColor: Colors.black54,
                        //             backgroundColor: state.when(
                        //               initial: () => Colors.white,
                        //               loading: () => Colors.white,
                        //               loaded: (data) {
                        //                 if (!data.init) {
                        //                   return data.isCorrect
                        //                       ? Colors.green
                        //                       : Colors.red;
                        //                 }
                        //                 return Colors.white;
                        //               },
                        //               back: (data) => Colors.white,
                        //             ),
                        //             shape: CircleBorder(
                        //                 side: BorderSide(
                        //                     color: state.when(
                        //                       initial: () => Colors.black54,
                        //                       loading: () => Colors.black54,
                        //                       loaded: (data) {
                        //                         if (!data.init) {
                        //                           return data.isCorrect
                        //                               ? Colors.green
                        //                               : Colors.red;
                        //                         }
                        //                         return speech!.isListening
                        //                             ? Colors.red
                        //                             : Colors.black54;
                        //                       },
                        //                       back: (data) =>
                        //                           speech!.isListening
                        //                               ? Colors.red
                        //                               : Colors.black54,
                        //                     ),
                        //                     width: 2))),
                        //         child: state.when(
                        //           initial: () => Icon(
                        //             Icons.mic,
                        //             // color: speech.isListening
                        //             //     ? Colors.red
                        //             //     : Colors.black54,
                        //             size: 50,
                        //           ),
                        //           loaded: (data) {
                        //             if (!data.init) {
                        //               return data.isCorrect
                        //                   ? const Icon(
                        //                       Icons.check,
                        //                       color: Colors.white,
                        //                       size: 50,
                        //                     )
                        //                   : const Icon(
                        //                       Icons.close,
                        //                       color: Colors.white,
                        //                       size: 50,
                        //                     );
                        //             }
                        //             return Icon(
                        //               Icons.mic,
                        //               color: speech!.isListening
                        //                   ? Colors.red
                        //                   : Colors.black54,
                        //               size: 50,
                        //             );
                        //           },
                        //           back: (data) => Icon(
                        //             Icons.mic,
                        //             color: speech!.isListening
                        //                 ? Colors.red
                        //                 : Colors.black54,
                        //             size: 50,
                        //           ),
                        //           loading: () =>
                        //               const CircularProgressIndicator(),
                        //         ));
                        //   },
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Future<bool> check(String correct, {String input = ""}) async {
  //   await Future.delayed(const Duration(milliseconds: 300));
  //   String text1 = correct.toLowerCase().replaceAll(",", "");
  //   String text2 = input.toLowerCase().replaceAll(",", "");
  //   if (text1 != text2) {
  //     return false;
  //   } else {
  //     return true;
  //   }
  // }

  // Future<Color> checkColor(bool status) async {
  //   Color fallback = Colors.black26;
  //   await Future.delayed(const Duration(milliseconds: 300));

  //   if (status) {
  //     fallback = Colors.red;
  //     await Future.delayed(const Duration(milliseconds: 1000));
  //     fallback = Colors.black26;
  //   } else if (!status) {
  //     fallback = Colors.green;
  //     await Future.delayed(const Duration(milliseconds: 300));
  //     fallback = Colors.black26;
  //   }
  //   return fallback;
  // }

  // This is called each time the users wants to start a new speech
  // recognition session
  // void startListening() {
  //   _logEvent('start listening');
  //   lastWords = '';
  //   lastError = '';

  //   final options = SpeechListenOptions(
  //     listenMode: ListenMode.dictation,
  //     cancelOnError: true,
  //     partialResults: false,
  //     autoPunctuation: true,
  //     enableHapticFeedback: true,
  //   );
  //   // Note that `listenFor` is the maximum, not the minimum, on some
  //   // systems recognition will be stopped before this value is reached.
  //   // Similarly `pauseFor` is a maximum not a minimum and may be ignored
  //   // on some devices.
  //   speech.listen(
  //     onResult: resultListener,
  //     listenFor: const Duration(seconds: 15),
  //     pauseFor: const Duration(seconds: 5),
  //     localeId: "en_US",
  //     onSoundLevelChange: soundLevelListener,
  //     listenOptions: options,
  //   );
  //   setState(() {});
  // }

  // void resultListener(SpeechRecognitionResult result) {
  //   _logEvent(
  //       'Result listener final: ${result.finalResult}, words: ${result.recognizedWords}');
  //   setState(() {
  //     lastWords = '${result.recognizedWords}';
  //     // logger.i(result.recognizedWords);
  //     BlocProvider.of<SpeechCheckerBloc>(context).add(SpeechCheckerEvent.check(
  //         originText: originText, lastword: result.recognizedWords));
  //   });
  // }

  // void soundLevelListener(double level) {
  //   minSoundLevel = min(minSoundLevel, level);
  //   maxSoundLevel = max(maxSoundLevel, level);
  //   // _logEvent('sound level $level: $minSoundLevel - $maxSoundLevel ');
  //   setState(() {
  //     this.level = level;
  //   });
  // }

  // void _logEvent(String eventDescription) {
  //   if (_logEvents) {
  //     var eventTime = DateTime.now().toIso8601String();
  //     debugPrint('$eventTime $eventDescription');
  //   }
  // }

  // void errorListener(SpeechRecognitionError error) {
  //   _logEvent(
  //       'Received error status: $error, listening: ${speech.isListening}');
  //   if (!mounted) return;
  //   setState(() {
  //     lastError = '${error.errorMsg} - ${error.permanent}';
  //   });
  // }

  // void statusListener(String status) {
  //   _logEvent(
  //       'Received listener status: $status, listening: ${speech.isListening}');
  //   // if (status == "done") {
  //   //   soundWave.call();
  //   // }
  //   setState(() {
  //     lastStatus = status;
  //   });
  // }
}
