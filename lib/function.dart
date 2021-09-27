import 'dart:math';

class Bmicalculator {
  Bmicalculator({this.height, this.weight});
  int height;
  int weight;
  double _bmi;

  String calculation() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Over Weight";
    } else if (_bmi > 18) {
      return "Normal";
    } else {
      return "Under Weight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "Exercise more";
    } else if (_bmi > 18) {
      return "Good job";
    } else {
      return "Eat a bit more";
    }
  }
}
