import 'package:flutter/material.dart';
import 'package:inspensar/screens/backtologin.dart';
import 'package:inspensar/screens/verification.dart';

class forgotpassword extends StatelessWidget {
  const forgotpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 30),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              margin: EdgeInsets.only(right: 42),
              child: Text(
                'Don’t worry\nEnter your email and we’ll\nsend you a link to reset your \npassword.',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: new InputDecoration(
                  labelText: "Email",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              width: double.infinity,
              child: FlatButton(
                child: Text(
                  'Continue',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => backtologin()),
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
