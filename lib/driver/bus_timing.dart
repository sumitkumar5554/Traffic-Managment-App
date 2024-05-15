import 'package:flutter/material.dart';

class BusTimingPage extends StatefulWidget {
  @override
  _BusTimingPageState createState() => _BusTimingPageState();
}

class _BusTimingPageState extends State<BusTimingPage> {
  int _currentStep = 0;
  List<Step> _steps = [
    Step(
      title: Text('7:00 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('HEG Mandideep'),
      ),
    ),
    Step(
      title: Text('7:30 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('11 Miles'),
      ),
    ),
    Step(
      title: Text('8:00 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('Rani Kamlapati'),
      ),
    ),
    Step(
      title: Text('8:15 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('Panchsheel Nagar'),
      ),
    ),
    Step(
      title: Text('8:20 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('Manit Road'),
      ),
    ),
    Step(
      title: Text('8:25 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('Tulsi Tower Road'),
      ),
    ),
    Step(
      title: Text('8:30 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('Police Commando Centre'),
      ),
    ),
    Step(
      title: Text('8:40 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('Bhadbhada Road'),
      ),
    ),
    Step(
      title: Text('8:45 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('Nilbadh'),
      ),
    ),
    Step(
      title: Text('9:00 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('Ratibad Road'),
      ),
    ),
    Step(
      title: Text('9:15 AM'),
      content: ListTile(
        leading: Icon(Icons.location_on),
        title: Text('Sistec - R'),
      ),
    ),
  ];

  void _updateTimingAndLocation() {
    // Perform validation or save to database here

    // Optionally, you can display a confirmation dialog or update UI accordingly
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Timing and Location Updated'),
          content: Text('Bus timing and location have been successfully updated.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Bus Timing and Location'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Stepper(
          currentStep: _currentStep,
          onStepContinue: () {
            setState(() {
              if (_currentStep < _steps.length - 1) {
                _currentStep++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (_currentStep > 0) {
                _currentStep--;
              }
            });
          },
          steps: _steps,
        ),
      ),
    );
  }
}
