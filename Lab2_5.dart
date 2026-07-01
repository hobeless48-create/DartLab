void Grade(int score) {
  print('Score: $score');
  if (score == 100) {
    print('Grade: A+');
  } else if (score >= 80) {
    print('Grade: A');
  } else if (score >= 75) {
    print('Grade: B+');
  } else if (score >= 70) {
    print('Grade: B');
  } else if (score >= 65) {
    print('Grade: C+');
  } else if (score >= 60) {
    print('Grade: C');
  } else if (score >= 55) {
    print('Grade: D+');
  } else if (score >= 50) {
    print('Grade: D');
  } else {
    print('Grade: F');
  }
  print('---');
}

void main() {
  Grade(100);
  Grade(99);
  Grade(74);
  Grade(61);
  Grade(55);
  Grade(20);

  print('Numbers 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  print('---');

  var fruits = ['Grape', 'Mango', 'Strawberry'];
  print('Fruits:');
  for (var fruit in fruits) {
    print('- $fruit');
  }
}
