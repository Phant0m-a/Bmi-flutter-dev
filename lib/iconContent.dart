import 'package:flutter/material.dart';

TextStyle labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
);

class iconContent extends StatelessWidget {
  iconContent({this.label, this.icon});
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        // SizedBox(
        //   height: 5.0,
        // ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
