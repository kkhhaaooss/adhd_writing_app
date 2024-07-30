import 'package:flutter/material.dart';

class PauseResume extends StatefulWidget {
  const PauseResume({super.key});
  final bool isPaused = false;
  @override
  State<PauseResume> createState() => _PauseResumeState();
}

class _PauseResumeState extends State<PauseResume> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: widget.isPaused
          ? const Text(
              'Resume Writing',
            )
          : const Text(
              'Pause Writing',
            ),
    );
  }
}
