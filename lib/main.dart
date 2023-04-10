import 'package:flutter/material.dart';
import 'package:inspensar/screens/AddNewWallet.dart';
import 'package:inspensar/screens/Export_data.dart';
import 'package:inspensar/screens/Exportdata2.dart';
import 'package:inspensar/screens/addnewacc.dart';
import 'package:inspensar/screens/currency.dart';
import 'package:inspensar/screens/expensee.dart';
import 'package:inspensar/screens/income.dart';
import 'package:inspensar/screens/language.dart';
import 'package:inspensar/screens/nonotification.dart';
import 'package:inspensar/screens/notification_setting.dart';
import 'package:inspensar/screens/security.dart';
import 'package:inspensar/screens/securitykey.dart';
import 'package:inspensar/screens/settings.dart';
import 'package:inspensar/screens/signup.dart';
import 'package:inspensar/screens/splashscreen.dart';
import 'package:inspensar/screens/transfer.dart';
import 'screens/checkbox.dart';
import 'screens/notifications.dart';
import 'screens/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
