import 'package:flutter/material.dart';

class IdentificationDocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Identification Documents'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildDocumentItem('PAN Card'),
            _buildDocumentItem('Aadhar Card'),
            _buildDocumentItem('Passport'),
            _buildDocumentItem('Driving License'),
            _buildDocumentItem('Voter ID'),
            // Add more document items as needed
          ],
        ),
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
