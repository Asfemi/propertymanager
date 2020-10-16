import 'package:flutter/material.dart';

class PropertyMarketing extends StatefulWidget {
  static String id = 'marketing';

  @override
  _PropertyMarketingState createState() => _PropertyMarketingState();
}

class _PropertyMarketingState extends State<PropertyMarketing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Marketing'),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
