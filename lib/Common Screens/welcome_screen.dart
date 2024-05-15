import 'package:flutter/material.dart';
import 'package:trafic_rush/driver/driver_signup.dart';
import 'package:trafic_rush/manager/manager_signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set debug banner to false
      title: 'Traffic Rush App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.directions_car,
              color: Colors.white,
            ), // Example icon
            SizedBox(width: 10),
            Text(
              'Traffic Rush',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0, // No shadow
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("images/trafic.jpg"),
              ),
            ),
            SizedBox(height: 70),
            Text(
              'CREATE ACCOUNT FOR ',
              style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200, // Set the width of the buttons
              height: 50, // Set the height of the buttons
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ManagerSignUpPage(),
                    ),
                  );
                  // Logic for Manager button press
                  // Navigate to manager screen
                },
                icon: Icon(Icons.business_center), // Manager icon
                label: Text('Manager'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orange), // Set background color to orange
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0), // Set circular border radius
                      side: BorderSide(color: Colors.black), // Set outer border color to black
                    ),
                  ),
                  elevation: MaterialStateProperty.resolveWith<double>((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return 5; // Increase elevation when pressed
                    }
                    return 2; // Default elevation
                  }),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 200, // Set the width of the buttons
              height: 50, // Set the height of the buttons
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DriverSignUpPage(),
                    ),
                  );
                  // Logic for Driver button press
                  // Navigate to driver screen
                },
                icon: Icon(Icons.directions_car), // Driver icon
                label: Text('Driver'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orange), // Set background color to orange
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0), // Set circular border radius
                      side: BorderSide(color: Colors.black), // Set outer border color to black
                    ),
                  ),
                  elevation: MaterialStateProperty.resolveWith<double>((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return 5; // Increase elevation when pressed
                    }
                    return 2; // Default elevation
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
