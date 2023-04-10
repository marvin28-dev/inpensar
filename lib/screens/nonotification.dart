import 'package:flutter/material.dart';

class nonotifications extends StatelessWidget {
  const nonotifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
          actions: [
            PopupMenuButton<Text>(
              child: Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.more_horiz, color: Colors.black)),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('Mark all read')),
                  PopupMenuItem(child: Text('Remove all'))
                ];
              },
            )
          ],
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text('There is no notification for now'),
          ),
        ),
      ),
    );
  }
}
