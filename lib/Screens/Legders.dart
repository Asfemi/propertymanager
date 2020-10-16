import 'package:flutter/material.dart';

class Ledgers extends StatefulWidget {
  static String id = 'ledger';

  @override
  _LedgersState createState() => _LedgersState();
}

class _LedgersState extends State<Ledgers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ledgers'),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
