import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/p2.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      SizedBox(height: 8.0),
                      CircleAvatar(
                        radius: 40.0,
                        // You can replace the AssetImage with your actual user photo
                        backgroundImage: AssetImage('assets/user_photo.jpg'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'More',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
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
                      TextButton(
                        onPressed: () {
                          // Handle Rate Our App button tap
                        },
                        child: Text(
                          'Rate Our App',
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
