import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Securitykey extends StatelessWidget {
  const Securitykey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blueAccent.shade200, Colors.blueAccent.shade200],
              begin: Alignment.topRight),
        ),
        child: inputscreen(),
      ),
    );
  }
}

class inputscreen extends StatefulWidget {
  const inputscreen({Key? key}) : super(key: key);

  @override
  _inputscreenState createState() => _inputscreenState();
}

class _inputscreenState extends State<inputscreen> {
  List<String> CurrentPin = [
    '',
    '',
    '',
    '',
  ];
  TextEditingController pinonecontroller = TextEditingController();
  TextEditingController pintwocontroller = TextEditingController();
  TextEditingController pinthreecontroller = TextEditingController();
  TextEditingController pinfourcontroller = TextEditingController();

  var outlineinputborder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.0),
      borderSide: BorderSide(color: Colors.transparent));
  int pinindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ],
        ),
        SizedBox(height: 20),
        Center(
            child: Text('Let’s  setup your PIN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600))),
        SizedBox(
          height: 40,
        ),
        buildPinRow(),
        SizedBox(
          height: 20,
        ),
        buildNumberPad(),
      ]),
    );
  }

  buildNumberPad() {
    return Expanded(
        child: Container(
            child: Padding(
      padding: EdgeInsets.only(bottom: 32),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            KeyboardNumber(
              n: 1,
              onPressed: () {
                pinIndexSetup('1');
              },
            ),
            KeyboardNumber(
              n: 2,
              onPressed: () {
                pinIndexSetup('2');
              },
            ),
            KeyboardNumber(
              n: 3,
              onPressed: () {
                pinIndexSetup('3');
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            KeyboardNumber(
              n: 4,
              onPressed: () {
                pinIndexSetup('4');
              },
            ),
            KeyboardNumber(
              n: 5,
              onPressed: () {
                pinIndexSetup('5');
              },
            ),
            KeyboardNumber(
              n: 6,
              onPressed: () {
                pinIndexSetup('6');
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            KeyboardNumber(
              n: 7,
              onPressed: () {
                pinIndexSetup('7');
              },
            ),
            KeyboardNumber(
              n: 8,
              onPressed: () {
                pinIndexSetup('8');
              },
            ),
            KeyboardNumber(
              n: 9,
              onPressed: () {
                pinIndexSetup('9');
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            KeyboardNumber(
              n: 0,
              onPressed: () {
                pinIndexSetup('0');
              },
            ),
            KeyboardNumber(
              n: 11,
              onPressed: () {
                clearPin();
              },
            ),
          ],
        )
      ]),
    )));
  }

  pinIndexSetup(String text) {
    if (pinindex == 0)
      pinindex = 1;
    else if (pinindex < 4) pinindex++;
    setPin(pinindex, text);
    CurrentPin[pinindex - 1] = text;
    String strPin = '';
    CurrentPin.forEach((e) {
      strPin += e;
    });
    if (pinindex == 4) print(strPin);
  }

  setPin(int n, String text) {
    switch (n) {
      case 1:
        pinonecontroller.text = text;
        break;
      case 2:
        pintwocontroller.text = text;
        break;
      case 3:
        pinthreecontroller.text = text;
        break;
      case 4:
        pinfourcontroller.text = text;
        break;
    }
  }

  clearPin() {
    if (pinindex == 0)
      pinindex = 0;
    else if (pinindex == 4) {
      setPin(pinindex, '');
      CurrentPin[pinindex - 1] = '';
      pinindex--;
    } else {
      setPin(pinindex, '');
      CurrentPin[pinindex - 1] = '';
      pinindex--;
    }
  }

  buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PinNumber(
          outlineInputBorder: outlineinputborder,
          textEditingController: pinonecontroller,
        ),
        PinNumber(
          outlineInputBorder: outlineinputborder,
          textEditingController: pintwocontroller,
        ),
        PinNumber(
          outlineInputBorder: outlineinputborder,
          textEditingController: pinthreecontroller,
        ),
        PinNumber(
          outlineInputBorder: outlineinputborder,
          textEditingController: pinfourcontroller,
        ),
      ],
    );
  }
}

class PinNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;

  PinNumber(
      {required this.textEditingController, required this.outlineInputBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16.0),
          border: outlineInputBorder,
          filled: true,
          fillColor: Colors.white30,
        ),
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
      ),
    );
  }
}

class KeyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;
  KeyboardNumber({required this.n, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueAccent.shade200.withOpacity(0.5),
        ),
        alignment: Alignment.center,
        child: MaterialButton(
          padding: EdgeInsets.all(8.0),
          onPressed: onPressed,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
          height: 90,
          child: Text(
            '$n',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ));
  }
}
