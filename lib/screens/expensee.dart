import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Expense extends StatefulWidget {
  const Expense({Key? key}) : super(key: key);

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                color: Colors.red,
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
                      width: 100,
                    ),
                    Text(
                      'Expense',
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
                    margin: EdgeInsets.only(right: 65, top: 190),
                    child: Text(
                      'Howmuch?',
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
                top: 270,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      MyStatefulcategoryWidget(),
                      Container(
                        padding: EdgeInsets.only(top: 15, left: 20, right: 20),
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
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: DottedBorder(
                          radius: Radius.circular(30),
                          color: Colors.black54,
                          strokeWidth: 2,
                          dashPattern: [
                            5,
                            5,
                          ],
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              child: Container(
                                height: 60,
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, top: 0),
                                width: double.infinity,
                                child: Container(
                                  child: FlatButton(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 95),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.attachment,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            'Add Attachment',
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Wrap(
                                            children: [
                                              ListTile(
                                                leading: Icon(Icons.share),
                                                title: Text('Share'),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.copy),
                                                title: Text('Copy Link'),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.edit),
                                                title: Text('Edit'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    color: Colors.white,
                                    textColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 17),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Repeat',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('Repeat Transaction')
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Switch(
                              onChanged: (bool s) {
                                setState(() {
                                  state = s;
                                });
                              },
                              value: state)
                        ],
                      ),
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
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

class MyStatefulcategoryWidget extends StatefulWidget {
  const MyStatefulcategoryWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulcategoryWidget> createState() =>
      _MyStatefulcategoryWidgetState();
}

class _MyStatefulcategoryWidgetState extends State<MyStatefulcategoryWidget> {
  String dropdownValue = 'Food';

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
          hint: Text('Food'),
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
            'Food',
            'Credit',
            'Gym',
            'Njoka',
            'Electricity',
            'Others,'
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
