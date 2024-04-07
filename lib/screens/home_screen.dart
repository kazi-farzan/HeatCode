import 'package:flutter/material.dart';
import 'solve_screen.dart';
import 'package:heatcode/services/challenges.dart';

class HomeScreen extends StatelessWidget {
  // Declare ChallengeBrain instance
  final ChallengeBrain challengeBrain = ChallengeBrain();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Coding Challenges',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        // Use the length of the challenges list
        itemCount: challengeBrain.getChallengeListLength() ?? 0,
        itemBuilder: (context, index) {
          final challenge = challengeBrain
              .challenges[index]; // Get challenge at current index
          return Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 16.0), // Add padding
            child: Card(
              color: Color(0xFF000001), // Set card background color
              elevation: 3, // Add elevation for a shadow effect
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Add rounded corners
              ),
              child: ListTile(
                // Display challenge title
                title: Text(
                  challenge.title,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SolveScreen(
                        challenge:
                            challenge, // Pass current challenge to SolveScreen
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
