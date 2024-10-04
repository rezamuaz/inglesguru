import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysbit/src/features/quiz/data/datasources/local/quiz_local_repo.dart';
import 'package:sysbit/src/features/quiz/data/model/quiz_mod.dart';
import 'package:sysbit/src/features/quiz/data/repository/quiz_repo_impl.dart';
import 'package:sysbit/src/features/quiz_result/presentation/widget/answer_item.dart';
import 'package:sysbit/src/features/root_page/presentation/blocs/cubit/navbar_view_cubit.dart';

class QuizResultPage extends StatefulWidget {
  const QuizResultPage({super.key, required this.lessonId});
  final String lessonId;
  @override
  State<QuizResultPage> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResultPage> {
  QuizMod quiz = QuizMod([]);

  Future<void> _get() async {
    // var res = await QuizLocalRepo.readJson(id: widget.lessonId);
    var result = await QuizRepoImpl().get(widget.lessonId);
    result.when(success: (data) {
      setState(() {
      quiz = data;
    });
    }, failure: (error) {
      
    },);
    
  }

  @override
  void initState() {
    _get();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    context.read<NavbarViewCubit>().change(state: false);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    context.read<NavbarViewCubit>().change(state: true);
    super.dispose();
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
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new_sharp)),
              Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "QUIZ RESULT",
                        style: GoogleFonts.inter(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ))),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
          ],
        ),
        body: Column(
          children: [
            Flexible(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => AnswerItem(
                    context: quiz.result?[index].context??"",
                    question: quiz.result?[index].question??"",
                    reason: quiz.result?[index].reason??"",
                    idx: index,
                        answer: quiz.result?[index].selections!.firstWhere((val)=> val.choice ==  quiz.result?[index].answer).description  ?? "",
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: quiz.result!.length),
            )),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.replay_outlined,
                      color: Colors.white,
                    ),
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        backgroundColor:
                            const WidgetStatePropertyAll(Colors.black87)),
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                const WidgetStatePropertyAll(Colors.black87),
                            shape: WidgetStatePropertyAll(
                                ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                        child: Text(
                          "Selanjutnya".toUpperCase(),
                          style: GoogleFonts.inter(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}
