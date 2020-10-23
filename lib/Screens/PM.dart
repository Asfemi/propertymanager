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
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: '2',
              child: Container(
                height: 400,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/103.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  HomeRowCard(
                    techimage: 'assets/201.jpg',
                    text: 'Masonry',
                  ),
                  HomeRowCard(
                    techimage: 'assets/202.jpg',
                    text: 'Gardening',
                  ),
                  HomeRowCard(
                    techimage: 'assets/204.jpg',
                    text: 'Plumbing',
                  ),
                  HomeRowCard(
                    techimage: 'assets/203.jpg',
                    text: 'Electricals',
                  ),
                  HomeRowCard(
                    techimage: 'assets/206.jpg',
                    text: 'Capentry',
                  ),
                  HomeRowCard(
                    techimage: 'assets/205.jpg',
                    text: 'Painting',
                  ),
                  HomeRowCard(
                    techimage: 'assets/207.jpg',
                    text: 'Cable',
                  ),
                  HomeRowCard(
                    techimage: 'assets/208.jpg',
                    text: 'Machinces',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
