import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return LinearProgressBar(
      maxSteps: 20,
      progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
      currentStep: 1,
      progressColor: Colors.red,
      backgroundColor: Colors.grey,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
