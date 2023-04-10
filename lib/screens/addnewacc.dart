import 'package:flutter/material.dart';

class Addnewacc extends StatefulWidget {
  const Addnewacc({Key? key}) : super(key: key);

  @override
  State<Addnewacc> createState() => _AddnewaccState();
}

class _AddnewaccState extends State<Addnewacc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(
                    //minHeight: MediaQuery.of(context).size.height -
                    //(MediaQuery.of(context).padding.top + kToolbarHeight)
                    minHeight: MediaQuery.of(context).size.height),
                child: IntrinsicHeight(
                    child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      child: Container(
                        width: double.maxFinite,
                        height: 550,
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
                            margin: EdgeInsets.only(right: 65, top: 390),
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
                      top: 470,
                      child: Container(
                        height: 500,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              padding:
                                  EdgeInsets.only(top: 15, left: 20, right: 20),
                              child: TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Surname",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(15.0),
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
                            Container(
                              height: 60,
                              margin:
                                  EdgeInsets.only(left: 20, right: 20, top: 40),
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
                      ),
                    ),
                  ],
                )))),
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
  String dropdownValue = 'Savings Account';

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
          hint: Text('Select Account Type'),
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
            'Savings Account',
            'Deposit Account',
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
