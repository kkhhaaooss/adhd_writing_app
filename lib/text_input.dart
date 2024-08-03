import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:adhd_writing_app/models/text_provider.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key});

  @override
  State<TextInput> createState() => _TextInputState();
}

// TODO (kkhhaaooss): Start timer when input starts and stop when input stops
class _TextInputState extends State<TextInput> {
  final _textController = TextEditingController();
  final _textFocusNode = FocusNode();
  bool inputEnabled = true;
  Widget _buildTextInput() {
    return TextField(
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
      onChanged: (text) => _updateDisplay(text),
      // TODO: onSubmitted no longer catches a return key after expanding from single line input. Add a test for return to the onChanged that then calls what would normally be called from onSubmitted.

      // onSubmitted: _updateDisplay(text),
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

  void _updateDisplay(text) {
    List<String> lines = _textController.text.split('\n');

    // Update only after a return
    if (lines.length > 1) {
      context.read<TextProvider>().updateText(_textController.text);
      // paragraphCount++;
      // await SharedPrefs.saveInt('paragraphCount', paragraphCount);
      // Clear the previously displayed paragraph and adds the just entered paragraph to the display
      // _displayLines.clear(); // Clear for updates
      // _displayLines.addAll(lines.getRange(0, 2));
      _textController.clear();

      // saveBytes = '${_displayLines[0]}\r\n';
      // await FileStorage.writeCounter(saveBytes, fileName);
      // //workaround for requestFocus not working in test
      // pauseTimer();
      // pauseTimer();
      // _textFieldFocusNode.requestFocus();
      setState(() {});

      // Append the new paragraph to the file
      // FileStorage.writeCounter(_displayLines[0], fileName);
      // _saveParagraphToFile();
    }
  }
  // void _updateDisplay(text) {
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return _buildTextInput();
  }
}
