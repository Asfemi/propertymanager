import 'package:flutter/material.dart';

class Ledgers extends StatefulWidget {
  static String id = 'ledger';

  @override
  _LedgersState createState() => _LedgersState();
}

class _LedgersState extends State<Ledgers> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ledgers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: '3',
              child: Container(
                height: 350,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/102.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
