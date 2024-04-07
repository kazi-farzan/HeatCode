import 'package:flutter/material.dart';
import 'package:heatcode/services/challenges.dart';
import 'package:heatcode/services/code_editor.dart';
import 'success_screen.dart';
import 'failure_screen.dart';

class SolveScreen extends StatefulWidget {
  final Challenge challenge;

  SolveScreen({Key? key, required this.challenge}) : super(key: key);

  @override
  _SolveScreenState createState() => _SolveScreenState();
}

class _SolveScreenState extends State<SolveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solve Challenge'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                widget.challenge
                    .description, // Accessing the description property
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: SingleChildScrollView(
              child: Container(
                child: CodeEditorWidget(challenge: widget.challenge),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Warning: Plagiarism may result in disqualification.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFA31621),
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the SuccessScreen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SuccessScreen(),
                  ),
                );
              },
              onLongPress: () {
                // Navigate to the FailureScreen when the button is long pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FailureScreen(),
                  ),
                );
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
