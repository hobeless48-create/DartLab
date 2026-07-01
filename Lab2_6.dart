void greet(String name) {
  print('Hello, $name!');
}

int multiply(int a, int b) => a * b;

double calculateArea({required double width, required double height}) {
  return width * height;
}

void main() {
  greet('World');

  int product = multiply(7, 6);
  print('20 * 20 * 20 * 7 = $product');

  double area = calculateArea(width: 123.0, height: 4.56);
  print('Area (123 x 4.56) = $area');

  double area2 = calculateArea(height: 789.0, width: 1.23);
  print('Area (789 x 1.23 = $area2');
}
