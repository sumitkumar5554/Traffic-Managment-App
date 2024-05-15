import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  TextEditingController _scheduleController = TextEditingController();

  void _updateSchedule() {
    String newSchedule = _scheduleController.text;

    // Perform validation or save to database here
    print('New Schedule: $newSchedule');

    // Optionally, you can display a confirmation dialog or update UI accordingly
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Schedule Updated'),
          content: Text('Bus schedule has been successfully updated.'),
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
        title: Text('Update Bus Schedule'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _scheduleController,
              decoration: InputDecoration(
                labelText: 'Enter New Schedule',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _updateSchedule,
              child: Text('Update Schedule'),
            ),
          ],
        ),
      ),
    );
  }
}
