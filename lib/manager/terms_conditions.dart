import 'package:flutter/material.dart';

class TermsConditionsPage extends StatefulWidget {
  @override
  _TermsConditionsPageState createState() => _TermsConditionsPageState();
}

class _TermsConditionsPageState extends State<TermsConditionsPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
        backgroundColor: Colors.black, // Set app bar background color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Company Terms and Conditions:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      // Custom company terms and conditions here
                      '''
                      Welcome to XYZ Corporation. These terms and conditions outline the rules and regulations for the use of XYZ Corporation's Website.

                      By accessing this website we assume you accept these terms and conditions in full. Do not continue to use XYZ Corporation's website if you do not accept all of the terms and conditions stated on this page.

                      The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and any or all Agreements: "Client", "You" and "Your" refers to you, the person accessing this website and accepting the Company's terms and conditions. "The Company", "Ourselves", "We", "Our" and "Us", refers to our Company. "Party", "Parties", or "Us", refers to both the Client and ourselves, or either the Client or ourselves.

                      All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner, whether by formal meetings of a fixed duration, or any other means, for the express purpose of meeting the Client's needs in respect of provision of the Company's stated services/products, in accordance with and subject to, prevailing law of Netherlands.

                      Any use of the above terminology or other words in the singular, plural, capitalisation and/or he/she or they, are taken as interchangeable and therefore as referring to same.
                      ''',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  activeColor: Colors.black, // Set checkbox color
                ),
                const Text(
                  'I accept the terms and conditions',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isChecked) {
            // Checkbox checked hai, yahaan kuch aur kar sakte hain, jaise ke terms ko save karna
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Terms and Conditions accepted!'),
              ),
            );
          } else {
            // Checkbox unchecked hai, user ko remind karein ke terms accept karne ke liye
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please accept the terms and conditions!'),
              ),
            );
          }
        },
        child: const Icon(Icons.check),
        backgroundColor: Colors.white, // Set floating action button color
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TermsConditionsPage(),
  ));
}
