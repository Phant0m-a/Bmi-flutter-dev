import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1E33),
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                          color: Colors.white,
                        ),
                        // SizedBox(
                        //   height: 5.0,
                        // ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                          color: Colors.white,
                        ),
                        // SizedBox(
                        //   height: 5.0,
                        // ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
                child: ReuseableCard(
              colour: Color(0xFF1D1E33),
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  )),
                  Expanded(
                      child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  ))
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              child: Center(
                child: Text('Calculate',
                    style: TextStyle(
                      fontSize: 30.0,
                    )),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ),
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {this.cardChild, @required this.colour, this.onPress, this.label});

  final Widget cardChild;
  final Color colour;
  final Function() onPress;
  final String label;

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
