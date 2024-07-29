import 'package:adhd_writing_app/last_paragraph.dart';
import 'package:adhd_writing_app/pause_resume.dart';
import 'package:adhd_writing_app/progress_bar.dart';
import 'package:adhd_writing_app/text_input.dart';
import 'package:adhd_writing_app/turn_timer.dart';
import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = null;
    return const SizedBox(
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // TODO(kkhhaaooss): implement circular timer widget
              TurnTimer(),
              SizedBox(height: 40),

              // TODO(kkhhaaooss): implement last entered paragraph widget
              LastParagraph(),

              // TODO(kkhhaaooss): implement text input box
              TextInput(),

              // TODO(kkhhaaooss): implement pause/resume writing button
              PauseResume(),

              // TODO(kkhhaaooss): implement progress bar
              ProgressBar(),
            ],
          ),
        ),
      ),
    );
  }
}
