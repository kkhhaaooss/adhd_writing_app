import 'package:adhd_writing_app/file_drawer.dart';
import 'package:adhd_writing_app/last_paragraph.dart';
import 'package:adhd_writing_app/pause_resume.dart';
import 'package:adhd_writing_app/progress_bar.dart';
import 'package:adhd_writing_app/text_input.dart';
import 'package:adhd_writing_app/turn_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    const bool isPaused = true;

    final AppBar appBar = AppBar(
      title: const Text('Writing App With A Cool Name When I Think Of One'),
      centerTitle: true,
    );
    return MaterialApp(
      // TODO(kkhhaaooss): Separate theme data into separate file, updatable from settings
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.merriweather(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        buttonTheme: const ButtonThemeData(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        ),
      ),
      home: Scaffold(
        drawer: const Drawer(
          child: FileDrawer(),
        ),
        appBar: appBar,
        backgroundColor: Colors.amber,
        body: SafeArea(
          minimum: EdgeInsets.only(
            top: appBar.preferredSize.height,
          ),
          top: true,
          child: SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: widthPadding,
                  vertical: heightPadding,
                ),
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    // TODO(kkhhaaooss): implement circular timer widget
                    TurnTimer(
                      timerDuration: 10 * 60,
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      isPaused: isPaused,
                    ),
                    const SizedBox(height: 40),

                    // TODO(kkhhaaooss): implement last entered paragraph widget
                    LastParagraph(
                      text: 'This is the last paragraph entered...',
                    ),

                    // TODO(kkhhaaooss): implement text input box
                    const TextInput(),

                    // TODO(kkhhaaooss): implement pause/resume writing button
                    const PauseResume(),

                    // TODO(kkhhaaooss): implement progress bar
                    const ProgressBar(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
