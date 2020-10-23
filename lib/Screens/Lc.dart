import 'package:flutter/material.dart';

//energy performance certificate
//local concil approval
//electricity safety check
//landlord gas approval
//register deposit scheme
//property laws
class LegalCompliance extends StatefulWidget {
  static String id = 'Lc';

  @override
  _LegalComplianceState createState() => _LegalComplianceState();
}

class _LegalComplianceState extends State<LegalCompliance> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Legalities'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: '1',
              child: Container(
                height: 400,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/101.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 150, //size.height * 0.5,
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
          ],
        ),
      ),
    );
  }
}
