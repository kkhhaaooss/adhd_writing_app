import 'package:flutter/material.dart';

class LastParagraph extends StatefulWidget {
  const LastParagraph({super.key});

  @override
  State<LastParagraph> createState() => _LastParagraphState();
}

class _LastParagraphState extends State<LastParagraph> {
  final _lastParagraphController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Last Paragraph',
      maxLines: 5,
      softWrap: true,
    );
  }
}
