import 'package:adhd_writing_app/interface.dart';
import 'package:flutter/material.dart';

class WritingApp extends StatefulWidget {
  const WritingApp({super.key});

  @override
  State<WritingApp> createState() => _WritingAppState();
}

class _WritingAppState extends State<WritingApp> {
  void _updateDisplay({required String text}) {
    List<String> lines = text.split('\n');
  }

  @override
  Widget build(BuildContext context) {
    return const Interface();
  }
}
