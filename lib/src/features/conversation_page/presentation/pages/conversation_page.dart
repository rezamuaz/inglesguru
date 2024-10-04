import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';
import 'package:sysbit/src/features/conversation_page/domain/repository/conv_repo_impl.dart';
import 'package:sysbit/src/features/conversation_page/presentation/blocs/speech_checker_bloc.dart';
import 'package:sysbit/src/features/conversation_page/presentation/cubit/lesson_data_cubit.dart';
import 'package:sysbit/src/features/conversation_page/presentation/cubit/speech_text_cubit.dart';

import 'package:sysbit/src/features/conversation_page/presentation/widget/scene_builder.dart';
import 'package:sysbit/src/features/root_page/presentation/blocs/cubit/navbar_view_cubit.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({super.key, required this.lessonId});

  ///LessonID [lessonId]
  final String lessonId;

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  late PageController _pageController;
  late LessonData data = LessonData();
  int _currentPage = 0;
  bool show = false;
  @override
  void initState() {
    _pageController = PageController(
      initialPage: _currentPage,
    );
   
    super.initState();
  }

  

  @override
  void didChangeDependencies() {
   WakelockPlus.toggle(enable:true);
    setState(() {
      show = true;
    });
     setState(() {
      data = context.read<LessonDataCubit>().state;
    });
    context.read<NavbarViewCubit>().change(state: false);
    super.didChangeDependencies();
   
  }

  @override
  void dispose() {
    _pageController.dispose();
    context.read<NavbarViewCubit>().change(state: true);
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < (data.pages!.length - 1)) {
      setState(() {
        _currentPage++;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SpeechTextCubit(),
        ),
        BlocProvider(
          create: (context) => SpeechCheckerBloc(),
        ),
      ],
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: SafeArea(
            child: Column(
              children: [
                // SizedBox(
                //     height: 60,
                //     child: AnimatedOpacity(
                //       duration: const Duration(seconds: 1),
                //       opacity: show ? 1 : 0,
                //       curve: Curves.decelerate,
                //       child: ProgressScene(
                //         pages: data.pages,
                //       ),
                //     )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    //Generate Conversation Page
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        padEnds: false,
                        physics: const NeverScrollableScrollPhysics(),
                        onPageChanged: (index) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                        controller: _pageController,
                        itemCount: data.pages!.length,
                        itemBuilder: (context, index) => SceneBuilderWidget(
                              lessonId: widget.lessonId,
                              pageLength: data.pages!.length,
                              currentPage: _currentPage,
                              nextPage: _nextPage,
                              prevPage: _prevPage,
                              lastWords: "",
                              steps: data.pages![index].steps,
                            )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> check(String correct, {String input = ""}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    String text1 = correct.toLowerCase().replaceAll(",", "");
    String text2 = input.toLowerCase().replaceAll(",", "");
    if (text1 != text2) {
      return false;
    } else {
      return true;
    }
  }
}
