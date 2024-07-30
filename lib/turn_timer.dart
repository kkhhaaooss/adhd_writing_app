import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class TurnTimer extends StatefulWidget {
  TurnTimer({
    required this.timerDuration,
    required this.screenWidth,
    required this.screenHeight,
    required this.isPaused,
    super.key,
  });

  final int timerDuration;
  final double screenWidth;
  final double screenHeight;
  final bool isPaused;
  final _timeController = CountDownController();

  @override
  State<TurnTimer> createState() => _TurnTimerState();
}

class _TurnTimerState extends State<TurnTimer> {
  late int timerDuration = widget.timerDuration;
  late double timerWidth = widget.screenWidth * .3;
  late double timerHeight = widget.screenHeight * .3;
  late bool started = !widget.isPaused;
  late bool paused = widget.isPaused;
  late final CountDownController _timeController = widget._timeController;

  void pauseResume() {
    paused ? _timeController.resume() : _timeController.pause();
  }

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: timerDuration,
      initialDuration: 0,
      controller: _timeController,
      width: timerWidth,
      height: timerHeight,
      ringColor: Colors.grey[300]!,
      ringGradient: null,
      fillColor: Colors.purpleAccent[100]!,
      fillGradient: null,
      backgroundColor: Colors.purple[500],
      backgroundGradient: null,
      strokeWidth: 20.0,
      strokeCap: StrokeCap.round,
      textStyle: const TextStyle(
        fontSize: 33.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      textFormat: CountdownTextFormat.MM_SS,
      isReverse: true,
      isReverseAnimation: false,
      isTimerTextShown: true,
      autoStart: started,
      onStart: () {
        debugPrint('Countdown Started');
      },
      onComplete: () {
        debugPrint('Countdown Ended');
      },
      onChange: (String timeStamp) {
        debugPrint('Countdown Changed $timeStamp');
      },
      timeFormatterFunction: (defaultFormatterFunction, duration) {
        if (duration.inSeconds == 0) {
          return "Start";
        } else {
          return Function.apply(defaultFormatterFunction, [duration]);
        }
      },
    );
  }
}
