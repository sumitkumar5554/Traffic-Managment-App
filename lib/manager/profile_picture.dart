import 'package:flutter/material.dart';

class ProfilePicturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Picture'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile_picture.jpg'), // Replace with the actual image path
            ),
            SizedBox(height: 20.0),
            Text(
              'John Doe', // Replace with the actual name
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '+1 123-456-7890', // Replace with the actual phone number
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            _buildDetailItem(Icons.email, 'john.doe@example.com'), // Replace with the actual email
            SizedBox(height: 10.0),
            _buildDetailItem(Icons.location_on, '123 Street, City, Country'), // Replace with the actual address
            // Add more details as needed
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(IconData icon, String detail) {
    return ListTile(
      leading: Icon(icon),
      title: Text(detail),
    );
  }
}
