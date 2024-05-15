import 'package:flutter/material.dart';
import 'package:trafic_rush/driver/driver_home_screen.dart';

class DriverSignUpPage extends StatefulWidget {
  @override
  _DriverSignUpPageState createState() => _DriverSignUpPageState();
}

class _DriverSignUpPageState extends State<DriverSignUpPage> {
  // Focus node for each TextField
  FocusNode _nameFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _contactNumberFocusNode = FocusNode();
  FocusNode _busNumberFocusNode = FocusNode();

  @override
  void dispose() {
    // Clean up the focus nodes when the widget is disposed
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _contactNumberFocusNode.dispose();
    _busNumberFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set app bar background color to black
        title: Text(
          'Driver Sign Up',
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30,),
            SizedBox(
              height: 80.0, // Height of the app bar
              child: CircleAvatar(
                radius: 30, // Radius of the circular avatar
                backgroundColor: Colors.orange, // Background color of the icon
                child: Icon(
                  Icons.bus_alert, // Driver icon
                  size: 50, // Size of the icon
                  color: Colors.black, // Color of the icon
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 10.0),
                  TextField(
                    focusNode: _nameFocusNode,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.circular(50.0), // Set circular border radius
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _nameFocusNode.hasFocus ? Colors.orange : Colors.grey),
                        borderRadius: BorderRadius.circular(50.0), // Set circular border radius
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    focusNode: _emailFocusNode,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.circular(50.0), // Set circular border radius
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _emailFocusNode.hasFocus ? Colors.orange : Colors.grey),
                        borderRadius: BorderRadius.circular(50.0), // Set circular border radius
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    focusNode: _contactNumberFocusNode,
                    decoration: InputDecoration(
                      labelText: 'Contact Number',
                      prefixIcon: Icon(Icons.phone),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.circular(50.0), // Set circular border radius
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _contactNumberFocusNode.hasFocus ? Colors.orange : Colors.grey),
                        borderRadius: BorderRadius.circular(50.0), // Set circular border radius
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    focusNode: _busNumberFocusNode,
                    decoration: InputDecoration(
                      labelText: 'Bus Number', // Label for the bus number
                      prefixIcon: Icon(Icons.directions_bus), // Icon representing the bus
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.circular(50.0), // Set circular border radius
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _busNumberFocusNode.hasFocus ? Colors.orange : Colors.grey),
                        borderRadius: BorderRadius.circular(50.0), // Set circular border radius
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DriverHomePage(),
                        ),
                      );
                      // Add logic for sign up here
                    },
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
