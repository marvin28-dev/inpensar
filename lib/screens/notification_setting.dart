import 'package:flutter/material.dart';

class Notification_Setting extends StatefulWidget {
  const Notification_Setting({Key? key}) : super(key: key);

  @override
  State<Notification_Setting> createState() => _Notification_SettingState();
}

class _Notification_SettingState extends State<Notification_Setting> {
  bool state = true;
  bool slate = true;
  bool skate = true;
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
              'Notification',
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
                        'Expert Alert',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      subtitle: Text('Get Notifications About Your Expense'),
                      trailing: Switch(
                          onChanged: (bool s) {
                            setState(() {
                              state = s;
                            });
                          },
                          value: state)),
                  ListTile(
                      title: Text(
                        'Budget',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      subtitle: Text(
                          'Get Notifications When Your Budget Is Exceeding Limit'),
                      trailing: Switch(
                          onChanged: (bool s) {
                            setState(() {
                              slate = s;
                            });
                          },
                          value: slate)),
                  ListTile(
                      title: Text(
                        'Tips & Articles',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      subtitle:
                          Text('Small And Useful Piece Of Practical Advices'),
                      trailing: Switch(
                          onChanged: (bool s) {
                            setState(() {
                              skate = s;
                            });
                          },
                          value: skate)),
                ],
              )),
        ));
  }
}
