import 'package:flutter/material.dart';
import 'package:propertymanager/Screens/HomeScreen.dart';
import 'package:propertymanager/Screens/Lc.dart';
import 'package:propertymanager/Screens/Legders.dart';
import 'package:propertymanager/Screens/Marketing.dart';
import 'package:propertymanager/Screens/PM.dart';
import 'package:propertymanager/Screens/Tenants.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PropertyManager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        PropertyMaintenance.id: (context) => PropertyMaintenance(),
        Tenants.id: (context) => Tenants(),
        LegalCompliance.id: (context) => LegalCompliance(),
        Ledgers.id: (context) => Ledgers(),
        PropertyMarketing.id: (context) => PropertyMarketing(),
      },
    );
  }
}
