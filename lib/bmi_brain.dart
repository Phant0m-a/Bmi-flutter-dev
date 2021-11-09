import 'dart:math';

class BmiBrain {
  BmiBrain({this.height, this.weight});
  final int weight;
  final int height;

  double _bmi;
  //returns bmi
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

//get Result IN GREEN COLOR
  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  // TIPS
  String getTip() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to do exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have lower than normal body weight. Try to eat a bit more.';
    }
  }
}
