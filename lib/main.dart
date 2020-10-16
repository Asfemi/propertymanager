import 'package:flutter/material.dart';
import 'package:propertymanager/Screens/HomeScreen.dart';
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
      },
    );
  }
}

