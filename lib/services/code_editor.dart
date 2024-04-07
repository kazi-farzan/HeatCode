import 'package:flutter/material.dart';
import 'package:heatcode/services/challenges.dart';
import 'package:code_editor/code_editor.dart';

class CodeEditorWidget extends StatefulWidget {
  final Challenge challenge;

  const CodeEditorWidget({super.key, required this.challenge});

  @override
  _CodeEditorWidgetState createState() => _CodeEditorWidgetState();
}

class _CodeEditorWidgetState extends State<CodeEditorWidget> {
  late EditorModel model;

  @override
  void initState() {
    super.initState();

    List<String> contentOfChallenge = [
      "// Your code here",
      "// Example code:",
      "void main() {",
      "\tprint('Hello, world!');",
      "}",
    ];

    List<FileEditor> files = [
      FileEditor(
        name: "${widget.challenge.dartFileName}.dart",
        language: "dart",
        code: contentOfChallenge.join("\n"),
      ),
    ];

    model = EditorModel(
      files: files,
      styleOptions: EditorModelStyleOptions(
        // Other style options...
        tabSize: 4,
        heightOfContainer: 424.0,
        editButtonBackgroundColor: Color(0xFF49A078),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CodeEditor(
      model: model,
      formatters: const ["dart"],
    );
  }
}
