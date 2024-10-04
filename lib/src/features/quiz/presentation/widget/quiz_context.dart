import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysbit/src/features/quiz/data/model/quiz_mod.dart';

import 'choice_button.dart';

class QuizContext extends StatefulWidget {
  const QuizContext(
      {super.key,
      required this.nextPage,
      required this.prevPage,
      required this.currentPage,
      this.contextQuiz = "",
      this.question = "",
      required this.choices});
  final Function() nextPage;
  final Function() prevPage;

  final int currentPage;
  final String contextQuiz;
  final String question;
  final List<ChoiceMod>? choices;
  @override
  State<QuizContext> createState() => _QuizContextState();
}

class _QuizContextState extends State<QuizContext> {
  String? _selectedOption = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 2, color: Colors.black54)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HtmlWidget(widget.contextQuiz),
              SizedBox(height: 5,),
              HtmlWidget(widget.question),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: List.generate(
            widget.choices!.length,
            (index) {
              return ChoiceButton(
                content: widget.choices![index].description ?? "",
                value: widget.choices![index].choice ?? "",
                groupValue: _selectedOption ?? "",
                onChanged: (p0) {
                  setState(() {
                    _selectedOption = p0;
                  });
                },
              );
            },
          ),
        ),
        Expanded(
            child: Container(
          child: Row(
            children: [
              IconButton(
                onPressed: widget.prevPage,
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                    backgroundColor: WidgetStatePropertyAll(Colors.black87)),
              ),
              Expanded(
                child: TextButton(
                    onPressed: widget.nextPage,
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black87),
                        shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                    child: Text(
                      "Selanjutnya".toUpperCase(),
                      style: GoogleFonts.inter(
                          fontSize: 17, fontWeight: FontWeight.w600,color: Colors.white),
                    )),
              )
            ],
          ),
        ))
      ],
    );
  }
}
