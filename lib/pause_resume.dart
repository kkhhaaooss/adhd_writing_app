import 'package:flutter/material.dart';

class PauseResume extends StatefulWidget {
  const PauseResume({super.key});
  final bool isPaused = false;
  @override
  State<PauseResume> createState() => _PauseResumeState();
}

class _PauseResumeState extends State<PauseResume> {
  late bool isPaused = widget.isPaused;
  void pauseResume() {
    isPaused = !isPaused;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pauseResume,
      child: isPaused
          ? const Text(
              'Resume Writing',
            )
          : const Text(
              'Pause Writing',
            ),
    );
  }
}
