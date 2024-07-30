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
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;
    final widthPadding = screenWidth * 0.05;
    final heightPadding = screenHeight * 0.05;

    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: widthPadding,
            vertical: heightPadding,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // TODO(kkhhaaooss): implement circular timer widget
              TurnTimer(
                timerDuration: 10,
              ),
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
