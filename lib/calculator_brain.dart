import 'dart:developer';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final height;
  final int weight;
  double _BMI = 0;

  String CalculateBMI() {
    _BMI = weight / pow(height / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_BMI >= 25) {
      return 'Overweight';
    } else if (_BMI >= 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_BMI >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_BMI >= 18) {
      return 'You have normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat bit more!';
    }
  }
}
