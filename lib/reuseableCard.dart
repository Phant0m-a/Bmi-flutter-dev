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

class bottomButton extends StatelessWidget {
  const bottomButton({@required this.onTap, this.title});
  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.pink,
        child: Center(
          child: Text(title,
              style: TextStyle(
                fontSize: 30.0,
              )),
        ),
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
