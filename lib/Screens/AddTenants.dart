import 'package:flutter/material.dart';

class AddTenants extends StatefulWidget {
  static String id = 'addten';

  @override
  _AddTenantsState createState() => _AddTenantsState();
}

class _AddTenantsState extends State<AddTenants> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('New Tenants'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.23),
                          blurRadius: 10,
                          offset: Offset(0, 5))
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.library_books),
                        Text('Bio-Data Form'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.23),
                          blurRadius: 10,
                          offset: Offset(0, 5))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
