/* - ใช้ .then() ทำให้โค้ดดูเชื่อมต่อกันเป็น Callback chain
 * - ใช้ async/await ทำให้สามารถเขียนโค้ด Asynchronous ให้อ่านง่ายเหมือนโค้ด Synchronous
 */

Future<void> runDelayedTask() async {
  String value = await Future.delayed(Duration(seconds: 3), () => '2. โหลดเสร็จ');
  print(value);
}

void main() async {
  print('1. เริ่ม');

  runDelayedTask();

  print('3. จบ');
}
