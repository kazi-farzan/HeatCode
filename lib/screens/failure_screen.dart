import 'package:flutter/material.dart';

class FailureScreen extends StatelessWidget {
  final String? errorMessage;

  FailureScreen({Key? key, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Failure'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, color: Colors.red, size: 200),
            const SizedBox(height: 20),
            const Text(
              'Submission failed!',
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 10),
            Text(
              errorMessage ??
                  'An error occurred.', // Display default message if errorMessage is null
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
