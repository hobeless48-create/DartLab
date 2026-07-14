Stream<dynamic> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
  await Future.delayed(Duration(seconds: 1));
  yield 'หมดเวลา!';
}

void main() async {
  print('เริ่มการนับถอยหลัง...');

  await for (var value in countdown(5)) {
    if (value is int) {
      print('นับถอยหลัง: $value');
    } else {
      print(value);
    }
  }
}
