import 'package:flutter/material.dart';
import 'package:blood_unity/UI/splash_screen.dart';
// Import your splash screen file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(), // Set SplashScreen as the home screen
      debugShowCheckedModeBanner: false, // Set to false to remove the debug banner
    );
  }
}
