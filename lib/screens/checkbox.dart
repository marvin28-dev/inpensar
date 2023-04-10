import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 160),
            child: Image.asset(
              'assets/images/CheckBox.png',
              height: 100.0,
              width: 100.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 10),
            child: Text(
              'You Are Set!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
