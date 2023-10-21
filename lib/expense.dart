import 'package:flutter/material.dart';
import 'package:cashflow_app/home.dart';
import 'package:flutter/services.dart';

class AddExpensePage extends StatelessWidget {
  const AddExpensePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF009688),
        elevation: 0,
        title: const Text('Add Expense'),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Name', // Add the label 'Name' here
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
                hintText: 'Enter name...',
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          SizedBox(height: 10), // Add some space between the sets of widgets
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Name of transaction', // Add another label here
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
                hintText: 'Name of transaction...',
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          SizedBox(height: 10), // Add some space between the sets of widgets
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Amount of transaction', // Add another label here
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
                hintText: 'Amount of transaction...',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: 10), // Add some space between the sets of widgets
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Date of transaction', // Add another label here
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
                hintText: 'Thursday, May 4th, 2019',
              ),
            ),
          ),
          SizedBox(height: 10), // Add some space between the sets of widgets
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                // Add your submit button action here
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(
                    238, 215, 5, 1), // Background color of the button
                minimumSize: Size(double.infinity, 50), // Set the minimumSize
              ),
              child: Text(
                'SUBMIT',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
