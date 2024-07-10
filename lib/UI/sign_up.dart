import 'package:flutter/material.dart';
import 'intro.dart';
import 'sign_in.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    String username = ''; // Variable to store the username

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/sign_up.png"), // Ensure you have the background image in the assets directory
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(17.0, 40.0, 17.0, 40.0), // Adjusted padding here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Back button
                  IconButton(
                    iconSize: 30, // Enlarge the icon size
                    icon: const Icon(Icons.arrow_back, color: Colors.white70),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(height: 200),
                  // Name input field
                  TextField(
                    onChanged: (value) {
                      username = value; // Update username as user types
                    },
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
                  const SizedBox(height: 20),
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
                  // Password input field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
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
                  // Confirm Password input field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Colors.grey.shade700),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Sign Up button
                  Center(
                    child: SizedBox(
                      width: double.infinity, // Make button take full width
                      height: 60, // Increase height of the button
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20, fontFamily: 'Lexend'), // Apply Lexend font
                          foregroundColor: Colors.white, // Text color
                          backgroundColor: Colors.redAccent.shade700, // Background color
                        ),
                        onPressed: () {
                          // Navigate to intro page and pass the username
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => IntroPage(username: username),
                            ),
                          );
                        },
                        child: const Text('Sign Up'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Bottom text
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Navigate to the sign-in page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Already have an account? Sign In',
                        style: TextStyle(color: Colors.redAccent.shade700, fontSize: 12, fontFamily: 'Lexend'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
