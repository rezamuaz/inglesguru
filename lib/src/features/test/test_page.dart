import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<TestPage> {
  SpeechToText? speech;
  bool _listenLoop = false;
  String lastHeard = '';
  StringBuffer totalHeard = StringBuffer();

  void _onStatus(String status) {
    if ('done' == status) {
      print('onStatus(): $status ');
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
    print('startListening()');
    speech = SpeechToText();

    bool _available = await speech!.initialize(
      onStatus: _onStatus,
      //onError: (val) => print('onError: $val'),
      onError: (val) => onError(val),
      debugLogging: true,
      
    );
    if (_available) {
      print('startListening() -> _available = true');
      await listen();
    } else {
      print('startListening() -> _available = false');
    }
  }

  Future listen() async {
    print('speech!.listen()');
    speech!.listen(
      onResult: (val) => onResult(val),
      pauseFor: Duration(seconds: 3),
      localeId: "en_US",
      listenOptions: SpeechListenOptions(listenMode: ListenMode.dictation)
    ); // Doesn't do anything
  }

  void onError(SpeechRecognitionError val) async {
    print('onError(): ${val.errorMsg}');
  }

  void onResult(SpeechRecognitionResult val) async {
    print('onResult()');
    print('val.alternates ${val.alternates}');
    if (val.finalResult) {
      setState(() {
        lastHeard = val.recognizedWords;
        totalHeard.write(lastHeard);
        totalHeard.write(" ");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(_listenLoop ? Icons.mic : Icons.mic_external_off),
            Text(
              'You said:',
            ),
            Text(lastHeard),
            Text(
              'Heard so far:',
            ),
            Text(totalHeard.toString()),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              mini: true,
              onPressed: () => startListening(forced: true),
              tooltip: 'Start listening',
              child: Icon(Icons.add),
            ),
          
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}