import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class TurnTimer extends StatefulWidget {
  const TurnTimer({
    required this.timerDuration,
    required this.screenWidth,
    required this.screenHeight,
    super.key,
  });

  final int timerDuration;
  final double screenWidth;
  final double screenHeight;

  @override
  State<TurnTimer> createState() => _TurnTimerState();
}

class _TurnTimerState extends State<TurnTimer> {
  late int timerDuration = widget.timerDuration;
  late double timerWidth = widget.screenWidth * .3;
  late double timerHeight = widget.screenHeight * .3;

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: timerDuration,
      initialDuration: 0,
      controller: CountDownController(),
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
      autoStart: true,
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
