import 'package:flutter/material.dart';
import 'package:adhd_writing_app/interface.dart';

class WritingApp extends StatefulWidget {
  const WritingApp({super.key});

  @override
  State<WritingApp> createState() => _WritingAppState();
}

class _WritingAppState extends State<WritingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Writing App With A Cool Name When I Think Of One'),
        ),
        backgroundColor: Colors.amber,
        body: const SizedBox(
          width: double.infinity,
          child: Center(
            child: Interface(),
          ),
        ),
      ),
    );
  }
}
