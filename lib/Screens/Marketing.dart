import 'package:flutter/material.dart';

class PropertyMarketing extends StatefulWidget {
  static String id = 'marketing';

  @override
  _PropertyMarketingState createState() => _PropertyMarketingState();
}

class _PropertyMarketingState extends State<PropertyMarketing> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Marketing'),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: '5',
            child: Container(
              height: 350,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/105.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
