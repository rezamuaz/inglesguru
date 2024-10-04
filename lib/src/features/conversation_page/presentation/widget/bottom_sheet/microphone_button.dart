import 'package:flutter/material.dart';
import 'package:sysbit/src/features/conversation_page/presentation/widget/blob_widget.dart';
import 'dart:math' show pi;
import 'recorder_child_bottom_sheet.dart';

class MicButton extends StatefulWidget {
  final Icon playIcon;
  final Color playBorder;
  final Color pauseBorder;
  final Icon pauseIcon;
  final bool hasSpeech;
  final bool isListening;
  final void Function() startListening;
  final MyBuilder builder;

  const MicButton({
    super.key,
    this.playBorder = Colors.black54,
    this.pauseBorder = Colors.red,
    this.playIcon = const Icon(Icons.play_arrow),
    this.pauseIcon = const Icon(Icons.pause),
    required this.hasSpeech,
    required this.isListening,
    required this.startListening,
    required this.builder
  });

  @override
  _MicButtonState createState() => _MicButtonState();
}

class _MicButtonState extends State<MicButton> with TickerProviderStateMixin {
  static const _kToggleDuration = Duration(milliseconds: 300);
  static const _kRotationDuration = Duration(seconds: 5);


  // rotation and scale animations
  late AnimationController _rotationController;
  late AnimationController _scaleController;
  double _rotation = 0;
  double _scale = 0.85;

  bool get _showWaves => !_scaleController.isDismissed;

  void _updateRotation() => _rotation = _rotationController.value * 2 * pi;
  void _updateScale() => _scale = (_scaleController.value * 0.2) + 0.85;

  @override
  void initState() {
    
    _rotationController =
        AnimationController(vsync: this, duration: _kRotationDuration)
          ..addListener(() => setState(_updateRotation))
          ..repeat();

    _scaleController =
        AnimationController(vsync: this, duration: _kToggleDuration)
          ..addListener(() => setState(_updateScale));

    super.initState();
  }

  void _onToggle() {
    if (_scaleController.isCompleted) {
      _scaleController.reverse();
    }else{
     _scaleController.forward(); 
    }
      


    widget.startListening();
  }

  void showSoundWave() {
     if (_scaleController.isCompleted) {
      _scaleController.reverse();
    }else{
     _scaleController.forward(); 
    }
  }

  Widget _buildIcon(bool isPlaying) {
    widget.builder.call(context, showSoundWave);
    return SizedBox.expand(
      key: ValueKey<bool>(isPlaying),
      child: IconButton(
        style: isPlaying
            ? ButtonStyle(
                side: WidgetStatePropertyAll(
                    BorderSide(color: widget.pauseBorder, width: 1)),
                backgroundColor: WidgetStatePropertyAll(Colors.white))
            : ButtonStyle(
                side: WidgetStatePropertyAll(
                    BorderSide(color: widget.playBorder, width: 2)),
                backgroundColor: WidgetStatePropertyAll(Colors.white)),
        icon: isPlaying ? widget.pauseIcon : widget.playIcon,
        onPressed: !widget.hasSpeech || widget.isListening ? null : _onToggle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (_showWaves) ...[
            Blob(
                color: Colors.red.withOpacity(.2),
                scale: _scale,
                rotation: _rotation),
            Blob(
                color: Colors.red.withOpacity(.2),
                scale: _scale,
                rotation: _rotation * 2 - 30),
            Blob(
                color: Colors.red.withOpacity(.2),
                scale: _scale,
                rotation: _rotation * 3 - 50),
          ],
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: AnimatedSwitcher(
              duration: _kToggleDuration,
              child: _buildIcon(widget.isListening),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _rotationController.dispose();
    super.dispose();
  }
}
