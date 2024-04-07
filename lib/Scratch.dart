class Challenge {
  final String title;
  final String description;

  Challenge({required this.title, required this.description});
} // created a custom datatype to use it below in making my own keyvalue pair

class ChallengeBrain {
  final List<Challenge> challenges = [
    Challenge(
      title: 'Challenge 1: Reverse a String',
      description: "Write a function that reverses a string.",
    ),
    Challenge(
      title: 'Challenge 2: Fibonacci Series',
      description:
          "Write a function to generate the Fibonacci sequence up to n terms.",
    ),
    Challenge(
      title: 'Challenge 3: Palindrome Checker',
      description:
          "Write a function to check if a given string is a palindrome.",
    ),
    // Add more challenges as needed
  ];

  //Variables
  int challengeCounter = 0;

  //Methods
  int? getChallengeListLength() {
    return challenges.length;
  }
}

void main() {
  print(ChallengeBrain().getChallengeListLength());
}
