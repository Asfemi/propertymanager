import 'package:flutter/material.dart';

class Tenants extends StatefulWidget {
  static String id = 'tenants';

  @override
  _TenantsState createState() => _TenantsState();
}

class _TenantsState extends State<Tenants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tenants'),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
