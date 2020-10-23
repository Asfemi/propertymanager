import 'package:flutter/material.dart';
import 'package:propertymanager/Components/HomeCard.dart';
import 'package:propertymanager/Screens/Lc.dart';
import 'package:propertymanager/Screens/Legders.dart';
import 'package:propertymanager/Screens/Marketing.dart';
import 'package:propertymanager/Screens/PM.dart';
import 'package:propertymanager/Screens/Tenants.dart';

final Color backgroundColor = Color(0XFF4A4A58);

class HomeScreen extends StatefulWidget {
  static String id = 'home_Screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 250, //size.height * 0.5,
                  width: size.width - 16,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.23),
                          blurRadius: 10,
                          offset: Offset(0, 5))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Summary:',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(''),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              HomeCard(
                tag: '1',
                text: 'Legalities',
                image: 'assets/101.png',
                route: () {
                  Navigator.pushNamed(context, LegalCompliance.id);
                },
              ),
              HomeCard(
                tag: '2',
                text: 'Maintenance',
                image: 'assets/103.jpg',
                route: () {
                  Navigator.pushNamed(context, PropertyMaintenance.id);
                },
              ),
              HomeCard(
                tag: '3',
                text: 'Ledgers',
                image: 'assets/102.jpeg',
                route: () {
                  Navigator.pushNamed(context, Ledgers.id);
                },
              ),
              HomeCard(
                tag: '4',
                text: 'Tenants',
                image: 'assets/104.jpg',
                route: () {
                  Navigator.pushNamed(context, Tenants.id);
                },
              ),
              HomeCard(
                tag: '5',
                text: 'Marketing',
                image: 'assets/105.jpg',
                route: () {
                  Navigator.pushNamed(context, PropertyMarketing.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
