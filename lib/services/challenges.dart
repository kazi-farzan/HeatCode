class Challenge {
  final String title;
  final String dartFileName;
  final String description;

  Challenge(
      {required this.title,
      required this.description,
      required this.dartFileName});
} // created a custom datatype to use it below in making my own key-value pair

class ChallengeBrain {
  final List<Challenge> challenges = [
    Challenge(
      title: 'Reverse a String',
      dartFileName: 'reverse_string',
      description: "Write a function that reverses a string.",
    ),
    Challenge(
      title: 'Fibonacci Series',
      dartFileName: 'fibonacci_series',
      description:
          "Write a function to generate the Fibonacci sequence up to n terms.",
    ),
    Challenge(
      title: 'Palindrome Checker',
      dartFileName: 'palindrome_checker',
      description:
          "Write a function to check if a given string is a palindrome.",
    ),
    Challenge(
      title: 'Find the Maximum Value in a List',
      dartFileName: 'find_maximum_value_in_list',
      description:
          "Write a function to find the maximum value in a list of integers.",
    ),
    Challenge(
      title: 'Calculate Factorial',
      dartFileName: 'calculate_factorial',
      description:
          "Write a function to calculate the factorial of a given number.",
    ),
    Challenge(
      title: 'Sorting Algorithm Implementation',
      dartFileName: 'sorting_algorithm_implementation',
      description:
          "Implement a sorting algorithm such as bubble sort, insertion sort, or selection sort.",
    ),
    Challenge(
      title: 'Linked List Implementation',
      dartFileName: 'linked_list_implementation',
      description:
          "Implement a basic linked list data structure with operations like insertion, deletion, and traversal.",
    ),
    Challenge(
      title: 'Binary Tree Traversal',
      dartFileName: 'binary_tree_traversal',
      description:
          "Write functions to traverse a binary tree in preorder, inorder, and postorder.",
    ),
    Challenge(
      title: 'Graph Traversal',
      dartFileName: 'graph_traversal',
      description:
          "Write functions to perform graph traversal algorithms like breadth-first search (BFS) and depth-first search (DFS).",
    ),
    Challenge(
      title: 'String Manipulation',
      dartFileName: 'string_manipulation',
      description:
          "Implement various string manipulation tasks like finding substrings, concatenation, and replacing characters.",
    ),
    // Add more challenges as needed
  ];

  //Variables
  int challengeCounter = 0;

  //Methods
  int? getChallengeListLength() {
    return challenges.length;
  }

  String? getTitle() {
    return challenges[challengeCounter].title;
  }

  Challenge getCurrentChallenge() {
    return challenges[challengeCounter];
  }
}
