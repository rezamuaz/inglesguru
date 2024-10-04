import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';
import 'package:sysbit/src/features/conversation_page/presentation/blocs/speech_checker_bloc.dart';
import 'package:sysbit/src/features/conversation_page/presentation/cubit/speech_text_cubit.dart';
import 'package:sysbit/src/features/conversation_page/presentation/widget/character_widget.dart';
import 'package:sysbit/src/features/conversation_page/presentation/widget/nav_and_record.dart';
import 'package:sysbit/src/features/conversation_page/presentation/widget/bottom_sheet/recorder_bottom_sheet.dart';
import 'package:sysbit/src/features/tutorial_page/presentation/pages/tutorial_page.dart';
import 'package:sysbit/src/features/lessons_page/presentation/blocs/bloc/lesson_bloc.dart';

class SceneBuilderWidget extends StatefulWidget {
  const SceneBuilderWidget(
      {super.key,
      required this.currentPage,
      required this.nextPage,
      required this.prevPage,
      required this.steps,
      required this.lastWords,
      required this.pageLength,
      required this.lessonId});

  ///Contains step data
  final List<LessonStep>? steps;
  final String lastWords;
  final Function() nextPage;
  final Function() prevPage;
  final int pageLength;
  final int currentPage;
  final String lessonId;

  @override
  State<SceneBuilderWidget> createState() => _SceneBuilderWidgetState();
}

class _SceneBuilderWidgetState extends State<SceneBuilderWidget>
    with TickerProviderStateMixin {
  bool transform = false;
  late AnimationController _controller;
  final SpeechToText speech = SpeechToText();
  late AudioPlayer player = AudioPlayer();

  bool showBottomSheet = false;
  PersistentBottomSheetController? _bottomSheetController;

  // Show BottomSheet Widget for Talking
  _showBottom() {
    if (!showBottomSheet) {
      _bottomSheetController = Scaffold.of(context).showBottomSheet(
        backgroundColor: Colors.transparent,
        enableDrag: false,
        (context) {
          return RecorderBottomSheet(
            voiceUrl: "${Constant.storageBaseUrl}/V${widget.lessonId}${widget.currentPage.toString().padLeft(2,"0")}.ogg" ?? "",
            originText: widget.steps?[1].contents?.primaryLang,
          );
        },
      );
    } else {
      _bottomSheetController!.close();
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _playAnimation();
    });
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    init();
    super.initState();
  }

  Future<void> init() async {
    player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      print('A stream error occurred: $e');
    });
  }

  @override
  void didChangeDependencies() {
    final SpeechTextCubit textCubit = BlocProvider.of<SpeechTextCubit>(context);
    textCubit.change(newText: widget.steps?[1].contents?.primaryLang);
    super.didChangeDependencies();
  }

  Future<void> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
    } on TickerCanceled {
      // The animation got canceled, probably because we were disposed.
    }
  }

  @override
  void dispose() {
    stopListening();
    _controller.dispose();
    player.dispose();
    super.dispose();
  }

  stopListening() async {
    await speech.cancel();
    await speech.stop();
  }

  playVoice(String url) async {
    await player.setUrl(url);
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SpeechCheckerBloc, SpeechCheckerState>(
      listener: (context, state) {
        state.whenOrNull(
          loaded: (data) {
            if (data.isCorrect && widget.currentPage < widget.pageLength - 1) {
              Future.delayed(const Duration(milliseconds: 2500),
                  () => _bottomSheetController!.close()).whenComplete(
                () => Future.delayed(
                  const Duration(milliseconds: 500),
                  () => widget.nextPage(),
                ),
              );
            } else if (data.isCorrect &&
                widget.currentPage == widget.pageLength - 1) {
              Future.delayed(const Duration(milliseconds: 2500),
                  () => _bottomSheetController!.close()).whenComplete(
                () => Future.delayed(
                  const Duration(milliseconds: 500),
                  () {
                    //Push to new page when reach last page
                    if (mounted) {
                      Navigator.of(context).push(_createRoute(widget.lessonId));
                    }
                  },
                ),
              );
            }
          },
        );
      },
      child: Stack(
        children: [
          Column(
            children: [
              CharacterWidget(
                playAudio: () async {
                  await playVoice(widget.steps![0].assets?.voice ?? "");
                },
                image: widget.steps![0].assets?.image ?? "",
                eng: widget.steps![0].contents?.primaryLang ?? "",
                ind: widget.steps![0].contents?.secondaryLang ?? "",
              ),
              const SizedBox(height: 40),
              CharacterWidget(
                playAudio: () async {
                  await playVoice(widget.steps![1].assets?.voice ?? "");
                },
                isLeftAlign: false,
                image: widget.steps![1].assets?.image ?? "",
                eng: widget.steps![1].contents?.primaryLang ?? "",
                ind: widget.steps![1].contents?.secondaryLang ?? "",
                lastWord: widget.lastWords,
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              child: NavAndRecord(
                record: () {
                  _showBottom();
                },
                controller: _controller,
                curretPage: widget.currentPage,
                nextPage: widget.nextPage,
                prevPage: widget.prevPage,
              ))
        ],
      ),
    );
  }
}

Route _createRoute(String lessonId) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TutorialPage(
      lessonId: lessonId,
    ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
