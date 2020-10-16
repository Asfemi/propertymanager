import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  HomeCard({this.icon, this.text, this.route});
  final IconData icon;
  final String text;
  final Function route;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: route,
        child: Container(
          height: 100, //size.height * 0.5,
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
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                Icon(
                  icon,
                  size: 35,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
