import 'package:flutter/material.dart';
import 'package:adhd_writing_app/interface.dart';
import 'package:google_fonts/google_fonts.dart';

class WritingApp extends StatefulWidget {
  const WritingApp({super.key});

  @override
  State<WritingApp> createState() => _WritingAppState();
}

class _WritingAppState extends State<WritingApp> {
  @override
  Widget build(BuildContext context) {
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
        appBar: appBar,
        backgroundColor: Colors.amber,
        body: SafeArea(
          minimum: EdgeInsets.only(
            top: appBar.preferredSize.height,
          ),
          top: true,
          child: const Interface(),
        ),
      ),
    );
  }
}
