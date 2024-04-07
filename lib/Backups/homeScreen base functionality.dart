import 'package:flutter/material.dart';
import 'package:heatcode/screens/solve_screen.dart';
import 'package:heatcode/services/challenges.dart';

class HomeScreen extends StatelessWidget {
  // Declare ChallengeBrain instance
  final ChallengeBrain challengeBrain = ChallengeBrain();

  // Constructor adjustment
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
          return ListTile(
            // Display challenge title
            title: Text(challenge.title),
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
          );
        },
      ),
    );
  }
}
