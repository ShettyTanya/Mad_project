import 'package:flutter/material.dart';
import 'home.dart';
import 'sign_up.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background image
          Image.asset(
            'assets/sign_in.png', // Ensure you have the background image in the assets directory
            fit: BoxFit.cover,
          ),
          // Form content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 250), // Adjust this value to position the text fields higher
                  // Email input field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.grey.shade700),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Name input field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.grey.shade700),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                  // Sign In button
                  Center(
                    child: SizedBox(
                      width: double.infinity, // Make button take full width
                      height: 60, // Increase height of the button
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20, fontFamily: 'Lexend'), // Apply Lexend font
                          foregroundColor: Colors.white, // text color
                          backgroundColor: Colors.red.shade900, // background color
                        ),
                        onPressed: () {
                          // Handle sign in action
                          // Navigate to the home page
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child:const  Text('Submit'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Bottom text
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Navigate to the sign-up page
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                      child: Text(
                        'New user? Sign up first',
                        style: TextStyle(color: Colors.red.shade900, fontSize: 12, fontFamily: 'Lexend'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100), // Adjust this value to add spacing at the bottom
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
