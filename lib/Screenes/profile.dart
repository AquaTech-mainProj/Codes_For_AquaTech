import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
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
            top: 20, // Adjust the top position of the app bar
            left: 0,
            right: 0,
            child: Container(
              height: 56, // Height of the app bar
              color: Colors.transparent, // Transparent background color
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white), // Back button icon
                    onPressed: () {
                      Navigator.pop(context); // Navigate back when pressed
                    },
                  ),
                  Text(
                    'My Profile',
                    style: TextStyle(
                      color: Colors.white, // Text color of the heading
                      fontSize: 20, // Font size of the heading
                      fontWeight: FontWeight.bold, // FontWeight of the heading
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Profile content
          Positioned(
            top: 96, // Adjust the top position of the profile content
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
                        'Username',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      CircleAvatar(
                        radius: 40.0,
                        // You can replace the AssetImage with your actual user photo
                        backgroundImage: AssetImage('assets/user_photo.jpg'),
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
}
