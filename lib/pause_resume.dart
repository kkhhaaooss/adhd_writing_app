import 'package:flutter/material.dart';

class PauseResume extends StatefulWidget {
  const PauseResume({super.key});

  @override
  State<PauseResume> createState() => _PauseResumeState();
}

class _PauseResumeState extends State<PauseResume> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        'Pause/Resume Writing Button',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
