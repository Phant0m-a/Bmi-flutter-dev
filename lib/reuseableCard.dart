import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.cardChild, @required this.colour, this.onPress});

  final Widget cardChild;
  final Color colour;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(onTap: onPress, child: cardChild),
        // color: Colors.purple,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)));
  }
}
