import 'package:flutter/material.dart';
import 'package:propertymanager/Components/HomeCard.dart';
import 'package:propertymanager/Screens/Lc.dart';
import 'package:propertymanager/Screens/Legders.dart';
import 'package:propertymanager/Screens/Marketing.dart';
import 'package:propertymanager/Screens/PM.dart';
import 'package:propertymanager/Screens/Tenants.dart';

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
                  child: Column(
                    children: <Widget>[],
                  ),
                ),
              ),
              HomeCard(
                icon: Icons.linear_scale,
                text: 'Legal Compliance',
                route: () {
                  Navigator.pushNamed(context, LegalCompliance.id);
                },
              ),
              HomeCard(
                icon: Icons.settings,
                text: 'Property Maintenance',
                route: () {
                  Navigator.pushNamed(context, PropertyMaintenance.id);
                },
              ),
              HomeCard(
                icon: Icons.attach_money,
                text: 'Ledgers',
                route: () {
                  Navigator.pushNamed(context, Ledgers.id);
                },
              ),
              HomeCard(
                icon: Icons.people,
                text: 'Tenants',
                route: () {
                  Navigator.pushNamed(context, Tenants.id);
                },
              ),
              HomeCard(
                icon: Icons.add_to_home_screen,
                text: 'Property Marketing',
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
