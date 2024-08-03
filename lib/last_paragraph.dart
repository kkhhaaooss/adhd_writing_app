import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:adhd_writing_app/models/text_provider.dart';

class LastParagraph extends StatefulWidget {
  const LastParagraph({super.key, required this.text});
  final String text;

  @override
  State<LastParagraph> createState() => _LastParagraphState();
}

class _LastParagraphState extends State<LastParagraph> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TextProvider>(
      builder: (context, textProvider, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            // width: screenWidth - 20.0,
            // height: screenHeight / 6,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(
                    width: 3, color: Colors.black, style: BorderStyle.solid)),
            child: Text(textProvider.text,
                style: TextStyle(
                  fontFamily: GoogleFonts.merriweather().fontFamily,
                  color: Colors.black,
                ))),
      ),
    );
  }
}
