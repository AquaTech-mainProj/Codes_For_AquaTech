import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:demo1/Screenes/Login.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
          // Define your app's theme here
          ),
      home: SplashScreen(), // Set SplashScreen as the home page
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 5 seconds before navigating to the login page
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return LogoTextAnimation(); // Your existing LogoTextAnimation widget
  }
}

// Your existing LogoTextAnimation widget goes here
class LogoTextAnimation extends StatefulWidget {
  @override
  _LogoTextAnimationState createState() => _LogoTextAnimationState();
}

class _LogoTextAnimationState extends State<LogoTextAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _logoAnimation;
  late Animation<Offset> _textAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 8),
    );
    _logoAnimation = Tween<Offset>(
      begin: Offset(0, -1),
      end: Offset(0, 0),
    ).animate(_controller);
    _textAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          children: [
            // Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/p1_2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Animated Logo
                  SlideTransition(
                    position: _logoAnimation,
                    child: Image.asset(
                      'assets/p1_1.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Animated Text
                  SlideTransition(
                    position: _textAnimation,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0), // Add left padding
                      child: Text(
                        "WELCOME TO AQUATECH",
                        textAlign: TextAlign.center, // Align text center
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 55,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
