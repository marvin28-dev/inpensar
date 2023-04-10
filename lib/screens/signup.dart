import 'package:flutter/material.dart';
import 'package:inspensar/screens/login.dart';
import 'package:inspensar/screens/onboardingscreen.dart';
import 'package:inspensar/screens/verification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue;
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 30),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Onbording()));
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
              ),
              SizedBox(
                width: 90,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 30),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ))
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Name",
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
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: RichText(
                    //'By signing up, you agree to the Terms of \nService and Privacy Policy'
                    text: TextSpan(
                        text: 'By signing up, you agree to the ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms of \nService and Privacy Policy',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent.shade200)),
                        ]),
                  )),
            ],
          ),
          SizedBox(
            height: 10,
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
                'Sign Up',
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
            height: 10,
          ),
          Text('or with'),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: FlatButton(
              //child: Text('GOOGLE'),
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
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Image.asset(
                    'assets/images/google.jpg',
                    height: 40.0,
                    width: 40.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: new Text(
                        "Sign Up With Google",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))
                ],
              ),
              color: Colors.white,
              textColor: Colors.blueAccent.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => loginscreen()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
