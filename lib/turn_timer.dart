import 'package:flutter/material.dart';
import 'package:circular_timer/circular_timer.dart';

class TurnTimer extends StatefulWidget {
  const TurnTimer({super.key});

  @override
  State<TurnTimer> createState() => _TurnTimerState();
}

class _TurnTimerState extends State<TurnTimer> {
  @override
  Widget build(BuildContext context) {
    return const CircularTimer(
      duration: Duration(seconds: 30),
      radius: 100,
    );
  }
}
