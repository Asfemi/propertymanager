import 'package:flutter/material.dart';
import 'package:propertymanager/Components/home_row_card.dart';

class PropertyMaintenance extends StatefulWidget {
  static String id = 'pm';

  @override
  _PropertyMaintenanceState createState() => _PropertyMaintenanceState();
}

class _PropertyMaintenanceState extends State<PropertyMaintenance> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Maintenance',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                HomeRowCard(),
                HomeRowCard(),
                HomeRowCard(),
                HomeRowCard(),
                HomeRowCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
