import 'package:flutter/material.dart';
import 'package:sysbit/src/features/conversation_page/presentation/pages/conversation_page.dart';

class ConversationWrap extends StatelessWidget {
  const ConversationWrap({super.key, required this.lessonId});
  final String lessonId;
  @override
  Widget build(BuildContext context) {
    return ConversationPage(lessonId: lessonId);
  }
}
