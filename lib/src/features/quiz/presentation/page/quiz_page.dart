import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysbit/src/core/utils/utils.dart';
import 'package:sysbit/src/features/quiz/data/datasources/local/quiz_local_repo.dart';
import 'package:sysbit/src/features/quiz/data/model/quiz_mod.dart';
import 'package:sysbit/src/features/quiz/data/repository/quiz_repo_impl.dart';
import 'package:sysbit/src/features/quiz/presentation/widget/choice_button.dart';
import 'package:sysbit/src/features/quiz/presentation/widget/quiz_context.dart';
import 'package:sysbit/src/features/quiz_result/presentation/pages/quiz_result_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key,required this.lessonId});
   final String lessonId;
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
    late PageController _pageController;
  int _currentPage = 0;
  QuizMod quiz = QuizMod([]);
  int value = 0;
   @override
  void initState() {
     _pageController = PageController(
      initialPage: _currentPage,
    );
     _get();
    super.initState();
    
  }

   void _nextPage() {
    if (_currentPage < (quiz.result!.length - 1)) {
      setState(() {
        _currentPage++;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }else if(_currentPage == quiz.result!.length - 1 ){
      Navigator.push(context, Utils.createRoute(QuizResultPage(lessonId: widget.lessonId)));
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
  void dispose() {
     _pageController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
   
    super.didChangeDependencies();
    
  }

  
   Future<void>_get()async {
    //  var res = await QuizLocalRepo.readJson(id: widget.lessonId);
     var apiResult = await QuizRepoImpl().get(widget.lessonId);
     apiResult.when(success: (data) {
      setState(() {
         quiz = data;
      });
      
  
     }, failure: (error) {
      setState(() {
         quiz = QuizMod([]);
      });
      
     },);
     
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_sharp)),
            Expanded(
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "QUIZ",
                      style: GoogleFonts.inter(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ))),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child:  PageView.builder(
                        scrollDirection: Axis.horizontal,
                        padEnds: false,
                        physics: const NeverScrollableScrollPhysics(),
                        onPageChanged: (index) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                        controller: _pageController,
                        itemCount: quiz.result!.length,
                        itemBuilder: (context, index) => QuizContext(
                          currentPage: _currentPage,
                          nextPage: _nextPage,
                          prevPage: _prevPage,
                          contextQuiz: quiz.result![index].context??"",
                          question: quiz.result![index].question??"",
                          choices: quiz.result![index].selections,
                        )),
      
      ),
    ));
  }
}
