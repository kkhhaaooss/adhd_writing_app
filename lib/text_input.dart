import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final _textController = TextEditingController();
  final _textFocusNode = FocusNode();
  bool inputEnabled = true;
  Widget _buildTextInput() {
    return TextFormField(
      controller: _textController,
      textCapitalization: TextCapitalization.sentences,
      canRequestFocus: true,
      focusNode: _textFocusNode,
      enabled: inputEnabled,
      minLines: 5,
      maxLines: 5,
      // expands: true,
      decoration: InputDecoration(
        counterText: '${_countWords(text: _textController.text)} words',
        labelText: 'Write Here',
        alignLabelWithHint: true,
        hintText: 'Write something...',
        border: const OutlineInputBorder(),
      ),
      onTap: () {
        // setState(() {
        //   inputEnabled = true;
        // });
        _textFocusNode.requestFocus();
      },
      style: GoogleFonts.merriweather(),
      // onEditingComplete: () {
      //   _textFocusNode.unfocus();
      // },
      onChanged: (text) => setState(() {}),
      // TODO: onSubmitted no longer catches a return key after expanding from single line input. Add a test for return to the onChanged that then calls what would normally be called from onSubmitted.
      onEditingComplete: () => setState(() {
        _textController.clear();
      }),
    );
  }

  int _countWords({required String text}) {
    final trimmedText = text.trim();
    if (trimmedText.isEmpty) {
      return 0;
    } else {
      return trimmedText.split(RegExp("\\s+")).length;
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildTextInput();
  }
}
