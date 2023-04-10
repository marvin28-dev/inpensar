import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Shopping budget has exceeds the..',
      'Utilities budget has exceeds the..',
      'Welcome to inpensar......'
    ];
    // ignore: unused_local_variable
    final List<String> subs = <String>[
      'fuck Shopping budget has exceeds the lim....',
      'the  Utilities budget has exceeds the limit....',
      'idiotic should be more careful with your...'
    ];
    final List<String> time = <String>['15:23', '11:15', '7:30'];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      ' ${entries[index]}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: Text('${time[index]}'),
                    subtitle: Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text('${subs[index]}')),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              )),
        ));
  }
}

Showpopupmenuitem() {
  PopupMenuButton<Text>(
    itemBuilder: (context) {
      return [
        PopupMenuItem(child: Text('Mark all read')),
        PopupMenuItem(child: Text('Remove all'))
      ];
    },
  );
}
