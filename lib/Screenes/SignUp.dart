import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool _agreeTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      /*appBar: AppBar(
        title: Text(
          "SignUp to AquaTech",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: const Color.fromARGB(255, 254, 254, 254), // Set text color to white
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 0, // Remove app bar shadow
        centerTitle: true,
      ),*/
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        iconTheme: IconThemeData(color: Colors.white), // Set back button color to white
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 60),
                // SignUp with Google Button
                ElevatedButton.icon(
                  onPressed: () {
                    // Action on SignUp with Google Button press
                  },
                  icon: Image.asset(
                    'assets/p3_1.png', // Assuming you have a Google logo asset
                    height: 24, // Adjust icon height as needed
                    width: 24, // Adjust icon width as needed
                  ),
                  label: Text("SignUp with Google"),
                ),
                SizedBox(height: 20), // Spacer between buttons
                // Continue with Email Button
               
                SizedBox(height: 20),
                // Enter your name TextFormField
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter your name *",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Enter your username TextFormField
                
                SizedBox(height: 20),
                // Enter your email TextFormField
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter your email *",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Enter your password TextFormField
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter your password *",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Re-enter your password TextFormField
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Re-enter your password *",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please re-enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Checkbox for terms of service and privacy policy
                Row(
                  children: [
                    Checkbox(
                      value: _agreeTerms,
                      onChanged: (value) {
                        setState(() {
                          _agreeTerms = value ?? false;
                        });
                      },
                    ),
                    Text(
                      "I agree with terms of service and privacy policy",
                      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Create Account Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // All fields are valid, continue with account creation
                    }
                  },
                  child: Text("Create Account"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}