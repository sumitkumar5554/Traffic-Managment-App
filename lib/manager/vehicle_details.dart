import 'package:flutter/material.dart';

class VehicleDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Details'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextField('Vehicle Type', 'Enter vehicle type'),
            SizedBox(height: 20.0),
            _buildTextField('Vehicle Number', 'Enter vehicle number'),
            SizedBox(height: 20.0),
            _buildDocumentItem('Vehicle Registration Document'),
            // Add more vehicle details or documents as needed
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildDocumentItem(String documentName) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: Icon(Icons.description),
        title: Text(documentName),
        onTap: () {
          // Add logic to view the document when tapped
          // For example: Open a PDF viewer or navigate to a detailed view
        },
      ),
    );
  }
}
