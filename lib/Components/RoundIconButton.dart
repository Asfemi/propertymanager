import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.onpressed});
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 66.0,
        width: 66.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.white,
      child: Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
