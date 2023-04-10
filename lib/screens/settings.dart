import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
              'Settings',
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
                      ' Currency',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Text('USD',
                            style: TextStyle(
                                fontWeight: FontWeight.w300)), // icon-1
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue.shade300,
                        ), // icon-2
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Language',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Text('English',
                            style: TextStyle(
                                fontWeight: FontWeight.w300)), // icon-1
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue.shade300,
                        ), // icon-2
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      ' Theme',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Text('Dark',
                            style: TextStyle(
                                fontWeight: FontWeight.w300)), // icon-1
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue.shade300,
                        ), // icon-2
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Security',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Text('FingerPrint',
                            style: TextStyle(
                                fontWeight: FontWeight.w300)), // icon-1
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue.shade300,
                        ), // icon-2
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      ' Notification',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue.shade300,
                        ), // icon-2
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  ListTile(
                    title: Text(
                      ' About',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        // icon-1
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue.shade300,
                        ), // icon-2
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      ' Help',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        // icon-1
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue.shade300,
                        ), // icon-2
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
