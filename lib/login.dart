import 'package:flutter/material.dart';
import 'package:cashflow_app/home.dart';
import 'package:cashflow_app/sign_up.dart';
import 'package:flutter/services.dart';

class AddLogInPage extends StatelessWidget {
  const AddLogInPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF009688),
          ),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AddSignUpPage())); // Add your onPressed action here
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20), // Add some space between AppBar and Text
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Log In', // Add the label 'SignUp' here
                style: TextStyle(
                  fontSize: 30, // Adjust the font size as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Email', // Add the label 'Name' here
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter email...',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(height: 5), // Add some space between the sets of widgets
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Password', // Add another label here
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter password...',
              ),
            ),
          ),

          SizedBox(height: 5), // Add some space between the sets of widgets
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                // Add your submit button action here
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF009688), // Background color of the button
                minimumSize: Size(double.infinity, 50), // Set the minimumSize
              ),
              child: Text(
                'LOG IN',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 5), // Add some space between AppBar and Text
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'FORGOT PASSWORD?', // Add the label 'SignUp' here
                style: TextStyle(
                  fontSize: 15, // Adjust the font size as needed
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Add some space between AppBar and Text
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'CONTINUE', // Add the label 'SignUp' here
                style: TextStyle(
                  fontSize: 15, // Adjust the font size as needed
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
