class Temperature {
  double _celsius = 0.0;

  double get celsius => _celsius;

  set celsius(double value) {
    if (value < -273.15) {
      print('Error: Temperature below absolute zero');
    } else {
      _celsius = value;
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  var temp = Temperature();

  temp.celsius = 25.0;
  print('Celsius: ${temp.celsius}');
  print('Fahrenheit: ${temp.fahrenheit}');

  temp.celsius = -300.0;
  print('Celsius: ${temp.celsius}');

  temp.celsius = 0.0;
  print('Celsius: ${temp.celsius}');
  print('Fahrenheit: ${temp.fahrenheit}');
}
