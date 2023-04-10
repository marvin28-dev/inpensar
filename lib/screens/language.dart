import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

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
              'Language',
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
                      'English(EN)',
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
                      'Indonesia (IND)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Arabic (AR)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Chinese (ZH)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Dutch (NL)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'French (FR)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'German (DE)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Korean (KO)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Russian (RU)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Spanish (ES)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              )),
        ));
  }
}
