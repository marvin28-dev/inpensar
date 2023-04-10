import 'package:flutter/material.dart';

class AddNewWall extends StatefulWidget {
  const AddNewWall({Key? key}) : super(key: key);

  @override
  State<AddNewWall> createState() => _AddNewWallState();
}

class _AddNewWallState extends State<AddNewWall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 450,
                  color: Colors.blueAccent.shade200,
                ),
              ),
              Positioned(
                  left: 0,
                  right: 80,
                  top: 30,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'Add  a New Account',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Positioned(
                  left: 15,
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(right: 65, top: 230),
                      child: Text(
                        'Balance',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$00.0',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ])),
              Positioned(
                  top: 320,
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 15, left: 20, right: 20),
                          child: TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Name",
                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(15.0),
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
                        MyStatefulWidget(),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: EdgeInsets.only(right: 320),
                            child: Text(
                              'Bank',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/Bank Of America.jpg',
                                  height: 60.0,
                                  width: 60.0,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/BCA.jpg',
                                  height: 60.0,
                                  width: 60.0,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/Chase.jpg',
                                  height: 60.0,
                                  width: 60.0,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/Citi.png',
                                  height: 60.0,
                                  width: 60.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/Jago.jpg',
                                  height: 60.0,
                                  width: 60.0,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/Mandiri.jpg',
                                  height: 60.0,
                                  width: 60.0,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/Paypal.jpg',
                                  height: 60.0,
                                  width: 60.0,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/See Other.jpg',
                                  height: 60.0,
                                  width: 60.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                          width: double.infinity,
                          child: FlatButton(
                            child: Text(
                              'Continue',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                            color: Colors.blueAccent.shade200,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Paypal';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18, right: 18, top: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.all(6),
        child: DropdownButton<String>(
          hint: Text('Bank'),
          isExpanded: true,
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down_outlined),
          elevation: 16,
          style: const TextStyle(color: Colors.black54),
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            'Paypal',
            'American Bank',
            'Jago',
            'Mandiri',
            'Bca',
            'PayPal,'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
