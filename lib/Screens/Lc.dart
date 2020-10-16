import 'package:flutter/material.dart';

class LegalCompliance extends StatefulWidget {
  static String id = 'Lc';

  @override
  _LegalComplianceState createState() => _LegalComplianceState();
}

class _LegalComplianceState extends State<LegalCompliance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legal Compliance'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
