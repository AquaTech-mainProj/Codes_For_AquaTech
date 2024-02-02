import 'package:flutter/material.dart';
import 'package:demo1/Screenes/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set app bar background color to black
        /*title: Text(
          'Your App',
          style: TextStyle(color: Colors.white), // Set app bar text color to white
        ),*/
      ),
      backgroundColor: Colors.black, // Set background color to black
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor:
            Colors.black, // Set bottom navigation bar background color to black
        type: BottomNavigationBarType.fixed, // Set type to fixed to ensure all icons are always visible
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              width: 30,
              height: 30,
              color: _currentIndex == 0 ? Colors.blue : null, // Highlight the icon if on Home page
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/user.png',
              width: 30,
              height: 30,
              color: _currentIndex == 1 ? Colors.blue : null, // Highlight the icon if on Profile page
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Do they need water?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Set text color to white
            ),
          ),
          SizedBox(height: 40),
          _buildButton(
            'Upload from Gallery',
            'assets/gallery.png',
          ),
          SizedBox(height: 20),
          _buildButton(
            'Capture the Image',
            'assets/camera.png',
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String buttonText, String imagePath) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 245, 243),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 156, 160, 155).withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
          SizedBox(height: 10),
          Text(
            buttonText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 25, 24, 24), // Set text color to white
            ),
          ),
        ],
      ),
    );
  }
}
