import 'package:flutter/material.dart';
import 'package:cashflow_app/home.dart';
import 'package:cashflow_app/login.dart';
import 'package:flutter/services.dart';

class AddSignUpPage extends StatelessWidget {
  const AddSignUpPage({super.key});
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
                        HomePage())); // Add your onPressed action here
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
                'Signup', // Add the label 'SignUp' here
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Full Names', // Add another label here
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
                hintText: 'Enter full name...',
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          SizedBox(height: 5), // Add some space between the sets of widgets
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomePage())); // Add your submit button action here
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF009688), // Background color of the button
                minimumSize: Size(double.infinity, 50), // Set the minimumSize
              ),
              child: Text(
                'SIGNUP',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 5), // Add some space between AppBar and Text
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddLogInPage()));
                },

                child: const Text('ALREADY HAVE AN ACCOUNT?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15, // Adjust the font size as needed
                    )),

                // Add the label 'SignUp' here
              ),
            ),
          ),
        ],
      ),
    );
  }
}
