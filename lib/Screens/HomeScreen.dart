import 'package:flutter/material.dart';
import 'package:propertymanager/Components/HomeCard.dart';

class HomeScreen extends StatefulWidget {

static String id = 'home_Screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            centerTitle: true,         
            title: Text('PropertyManager'),
            titleSpacing: 2,
             ),
          body: SingleChildScrollView(
                      child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  HomeCard(),
                  HomeCard(),
                  HomeCard(),
                  HomeCard(),
                ],
              ),
            ),
          ),
    );
  }
}

