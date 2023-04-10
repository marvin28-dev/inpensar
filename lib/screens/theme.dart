import 'package:flutter/material.dart';

class Them extends StatelessWidget {
  const Them({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 1,
            toolbarHeight: 70,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
            ),
            title: Text(
              'Themes',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
          ),
          body: Container(
              color: Colors.white,
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  ListTile(
                    title: Text(
                      'Light',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.blue.shade300,
                        ), // icon-2
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Dark',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Use Device Themes',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              )),
        ));
  }
}
