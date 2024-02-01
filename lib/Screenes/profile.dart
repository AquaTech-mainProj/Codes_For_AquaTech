import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart'; // Import the Login.dart file

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late User? _user;

  @override
  void initState() {
    super.initState();
    _user = FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/sign_in.png',
              fit: BoxFit.cover,
            ),
          ),
          // Custom app bar
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Container(
              height: 56,
              color: Colors.transparent,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'My Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Profile content
          Positioned(
            top: 96,
            left: 16,
            right: 16,
            bottom: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, ${_user?.displayName ?? 'User'}!', // Display user's name
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        'Email: ${_user?.email ?? 'No email'}', // Display user's email
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle My Watering History button tap
                        },
                        child: Text(
                          'My Watering History',
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      TextButton(
                        onPressed: () {
                          // Handle Logout button tap
                          _confirmLogout(context);
                        },
                        child: Text(
                          'Log out',
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'More',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextButton(
                        onPressed: () {
                          // Handle Help & Support button tap
                        },
                        child: Text(
                          'Help & Support',
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      TextButton(
                        onPressed: () {
                          // Handle About App button tap
                        },
                        child: Text(
                          'About App',
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to handle logout confirmation dialog
  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Log Out"),
          content: Text("Do you want to log out?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("No"),
            ),
            TextButton(
              onPressed: () {
                _logout(context); // Log out the user
              },
              child: Text("Yes"),
            ),
          ],
        );
      },
    );
  }

  // Function to handle logout
   void _logout(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut(); // Sign out the user
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()), // Redirect to LoginScreen
      );
    } catch (e) {
      print("Error signing out: $e");
      // Handle error
    }
  }
}
     

