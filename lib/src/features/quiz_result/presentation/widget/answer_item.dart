import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerItem extends StatefulWidget {
  const AnswerItem(
      {super.key,
      required this.answer,
      required this.idx,
      required this.question,
      required this.context,
      required this.reason});
  final String answer;
  final String question;
  final String context;
  final String reason;
  final int? idx;

  @override
  State<AnswerItem> createState() => _AnswerItemState();
}

class _AnswerItemState extends State<AnswerItem>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<bool> expanded = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black54, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  "Question #${widget.idx! + 1}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
              ),
              Material(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          expanded.value = !expanded.value;
                        });
                      },
                      splashColor: Colors.black12,
                      child: Container(
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: expanded.value
                              ? const Icon(Icons.keyboard_arrow_up_outlined)
                              : const Icon(Icons.keyboard_arrow_down_outlined),
                        ),
                      )))
            ],
          ),
          const Divider(
                  color: Colors.black54,
                ),
          HtmlWidget(widget.context),
          const SizedBox(height: 8),
          HtmlWidget(
            widget.question,
          ),
          const SizedBox(height: 8),
          AnimatedCrossFade(
            crossFadeState: expanded.value
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            alignment: Alignment.topLeft,
            sizeCurve: Easing.standardDecelerate,
            duration: const Duration(milliseconds: 300),
            firstChild: const SizedBox(),
            secondChild: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(
                  color: Colors.black54,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xFF00BC0D),
                      borderRadius: BorderRadius.circular(10)),
                  child: HtmlWidget(
                    widget.answer,
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                ),
                Text(
                  widget.reason,
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
