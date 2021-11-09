import 'package:flutter/material.dart';
import 'reuseableCard.dart';
import 'constant.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.getTip,
      @required this.calculateBmi,
      @required this.getResult});
  final String getTip;
  final String getResult;
  final String calculateBmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25.0, top: 15.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      getResult,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF24D876),
                      ),
                    ),
                    Text(
                      calculateBmi,
                      style: TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      getTip,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              )),
          bottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
