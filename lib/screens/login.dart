import 'package:flutter/material.dart';
import 'package:inspensar/screens/forgotpassword.dart';
import 'package:inspensar/screens/verification.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({Key? key}) : super(key: key);

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
                    'Login',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
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
              margin: EdgeInsets.all(20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        obscureText:
                        false;
                      },
                      icon: Icon(Icons.visibility)),

                  labelText: "Password",
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
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => VerifyPhone(
                        phoneNumber: '',
                      ),
                    ),
                  );
                },
                color: Colors.blueAccent.shade200,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => forgotpassword()));
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                )),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                child: RichText(
                  //'By signing up, you agree to the Terms of \nService and Privacy Policy'
                  text: TextSpan(
                      text: 'Dont have an acoount yet? ',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                color: Colors.blueAccent.shade200)),
                      ]),
                )),
          ],
        ),
      ),
    );
  }
}
