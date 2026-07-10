void executeOperation(String name, double a, double b, double Function(double, double) operation) {
  var result = operation(a, b);
  print('Result for $name: $result');
}

double cylinder(double r, double h) {
  return (22/7*(r*r))*h;
}

double triangle(double b, double h) {
  return 1/2 * (b*h);
}

double square(double x, double y) {
  return x * y;
}

void main() {
  executeOperation('cylinder', 3, 5, cylinder);
  executeOperation('triangle', 7, 5, triangle);
  executeOperation('square', 5, 5, square);
}
