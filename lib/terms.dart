import 'package:carbeapp/agree.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Terms and Conditions'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms and Conditions',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'By using our carwash booking app, you agree to the following terms and conditions:',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '1. You are responsible for providing accurate and up-to-date information when booking a carwash.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '2. We reserve the right to refuse service to anyone for any reason.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '3. Payment for carwash services must be made in full at the time of booking.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '4. We are not responsible for any damage to your vehicle that may occur during the carwash.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '5. We may update these terms and conditions at any time without notice.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'By tapping the "Agree" button below, you acknowledge that you have read and agree to these terms and conditions.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 32.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
     Navigator.push(context,
     MaterialPageRoute(builder:  (context) => AgreeScreen(),));             
                  },
                  child: Text('Agree'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
