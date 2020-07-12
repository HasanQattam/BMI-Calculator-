import 'dart:math';

class CalculaterBrain {
  CalculaterBrain({this.height, this.weight});
  final int height;
  final int weight;
  double bmi;
  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (bmi >= 25) {
      return 'overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String getInterprtation() {
    if (bmi >= 25) {
      return 'You are slightly overweight. You may be advised to lose some weight for health reasons.';
    } else if (bmi > 18.5) {
      return 'You are at a healthy weight for your height.';
    } else {
      return 'You may need to put on some weight. You are recommended to ask your doctor or a dietitian for advice.';
    }
  }
}
