import 'package:flutter/material.dart';
import 'package:inspensar/screens/login.dart';

class Export2 extends StatelessWidget {
  const Export2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 40),
              child: Image.asset(
                'assets/images/emailontheway.jpg',
                height: 300,
                width: 600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 70, right: 70),
              child: Text(
                'Check your email, we send you the financial report. In certain cases, it might take a little longer, depending on the time period and the volume of activity.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 190,
            ),
            Container(
              height: 70,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              width: double.infinity,
              child: FlatButton(
                child: Text(
                  'Back To Home',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => loginscreen()),
                  );
                },
                color: Colors.blueAccent.shade200,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
