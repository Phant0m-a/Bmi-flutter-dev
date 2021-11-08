import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseableCard.dart';
import 'iconContent.dart';
import 'constant.dart';

enum Gender { male, female }
// Example for gender
// class gender{
//   Gender mygender;
//   gender({this.mygender})
// }

// gender g = new gender(mygender: Gender.male);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  int height = 120;
  int weight = 60;
  // Color maleCardColor = activeCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // //1= male , 0 = female
  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = activeCardColor;
  //       // femaleCardColor = inactiveCardColor;
  //     }
  //   }
  //
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = activeCardColor;
  //       // maleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

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
                          onPress: () {
                            setState(() {
                              // updateColor(Gender.male);
                              selectedGender = Gender.male;
                            });
                          },
                          // colour: maleCardColor,
                          colour: selectedGender == Gender.male
                              ? activeCardColor
                              : inactiveCardColor,
                          cardChild: iconContent(
                            label: 'MALE',
                            icon: FontAwesomeIcons.mars,
                          ))),
                  Expanded(
                      child: ReuseableCard(
                    // colour: femaleCardColor,
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    onPress: () {
                      setState(() {
                        // updateColor(Gender.female);
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: iconContent(
                      label: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
                child: ReuseableCard(
              colour: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: TextStyle(
                      color: Color(0xFF8D8E98),
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          color: Color(0xFF8D8E98),
                        ),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      // activeColor: Colors.white,
                      // inactiveColor: Color(0xFF8D8E98),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          print(newValue);
                          height = newValue.round();
                        });
                      },
                      value: height.toDouble(),
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                              color: Color(0xFF8D8E98), fontSize: 18.0),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(icon: FontAwesomeIcons.plus),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(icon: FontAwesomeIcons.minus)
                          ],
                        )
                      ],
                    ),
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

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      // shape: CircleBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
