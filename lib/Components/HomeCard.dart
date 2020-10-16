import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  //HomeCard({}) 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height:  100,    //size.height * 0.5,
        width: size.width - 16,
        decoration: BoxDecoration(
        color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.23),
              blurRadius: 10,
              offset: Offset(0, 5)
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Column(children: <Widget>[],),
      ),
    );
  }
}