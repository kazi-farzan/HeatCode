import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

//TODO:SET FONT ACROSS ALL PAGES
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding Challenges App',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF000001),
        scaffoldBackgroundColor: const Color(0xFF000001),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF49A078),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'firaCode'),
          titleLarge: TextStyle(fontFamily: 'firaCodeBold'),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color(0xFF49A078), // Background color of elevated buttons
            foregroundColor: Colors.white, // Text color of elevated buttons
            textStyle: const TextStyle(
                fontWeight: FontWeight.bold), // Font style of button text
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
