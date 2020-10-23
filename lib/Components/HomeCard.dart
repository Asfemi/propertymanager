import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertymanager/Screens/HomeScreen.dart';

final Color backgroundColor = Color(0XFF4A4A58);

class HomeCard extends StatelessWidget {
  HomeCard({this.icon, this.text, this.route, this.image, this.tag});
  final ImageProvider icon;
  final String text;
  final Function route;
  final String image;
  final String tag;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: route,
        child: Hero(
          tag: tag,
          child: Container(
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
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                    //color: backgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                  ),
                  height: 150,
                  width: 170,
                  //child: Image.asset('assets/101.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 100),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
