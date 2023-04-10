import 'package:flutter/material.dart';

class Export_data extends StatelessWidget {
  const Export_data({Key? key}) : super(key: key);

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
              'Export',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            shadowColor: Colors.white,
          ),
          body: Container(
              color: Colors.white,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 180),
                  child: Text(
                    'What Do You Want To Export',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                What_export(),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 240),
                  child: Text(
                    'Which Date Range?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Which_range(),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 70),
                  child: Text(
                    'What Format Do you Want To Export The File',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                What_format(),
                SizedBox(height: 170),
                Container(
                  height: 70,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                  width: double.infinity,
                  child: FlatButton(
                    child: Container(
                      margin: EdgeInsets.only(left: 130),
                      child: Row(
                        children: [
                          Icon(Icons.download_sharp),
                          Text(
                            'Export',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                    color: Colors.blueAccent.shade200,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ])),
        ));
  }
}

class What_export extends StatefulWidget {
  const What_export({Key? key}) : super(key: key);

  @override
  State<What_export> createState() => _What_exportState();
}

class _What_exportState extends State<What_export> {
  String dropdownValue = 'All';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18, right: 18, top: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.all(6),
        child: DropdownButton<String>(
          hint: Text('What'),
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
            'All',
            'Food Transactions',
            'Market Transactions',
            'Bills Transactions',
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

class Which_range extends StatefulWidget {
  const Which_range({Key? key}) : super(key: key);

  @override
  State<Which_range> createState() => _Which_rangeState();
}

class _Which_rangeState extends State<Which_range> {
  String dropdownValue = 'Last 30 days';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18, right: 18, top: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.all(6),
        child: DropdownButton<String>(
          hint: Text('Range'),
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
            'Last 30 days',
            'Last 3 months',
            'Last 6 months',
            'Last 1 year',
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

class What_format extends StatefulWidget {
  const What_format({Key? key}) : super(key: key);

  @override
  State<What_format> createState() => _What_formatState();
}

class _What_formatState extends State<What_format> {
  String dropdownValue = 'Last 30 days';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18, right: 18, top: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.all(6),
        child: DropdownButton<String>(
          hint: Text('Range'),
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
            'Last 30 days',
            'Last 3 months',
            'Last 6 months',
            'Last 1 year',
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
