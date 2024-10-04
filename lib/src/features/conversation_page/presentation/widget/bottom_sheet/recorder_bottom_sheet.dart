import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sysbit/src/features/conversation_page/presentation/blocs/speech_checker_bloc.dart';

import 'package:sysbit/src/features/conversation_page/presentation/widget/bottom_sheet/recorder_child_bottom_sheet.dart';

class RecorderBottomSheet extends StatefulWidget {
  const RecorderBottomSheet({super.key, required this.originText,this.voiceUrl = ""});
  final String? originText;
  final String voiceUrl;

  @override
  State<RecorderBottomSheet> createState() => _RecorderBottomSheetState();
}

class _RecorderBottomSheetState extends State<RecorderBottomSheet> {
@override
  void didChangeDependencies() {
    context.read<SpeechCheckerBloc>().add(SpeechCheckerEvent.started(text: widget.originText));
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return RecorderChildBottomSheet(voiceUrl:widget.voiceUrl ,);
  }
}
