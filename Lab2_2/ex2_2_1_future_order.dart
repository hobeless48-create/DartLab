/* โปรแกรมทำงานแบบ Asynchronous โดยพิมพ์ "1. เริ่ม" ก่อน 
 * จากนั้นนำ Future.delayed ไปพักไว้ใน Event Loop และพิมพ์ "3. จบ" ทันที 
 * เมื่อครบ 3 วินาที จึงพิมพ์ "2. โหลดเสร็จ" ผ่าน .then()
 */

void main() {
  print('1. เริ่ม');

  Future.delayed(Duration(seconds: 3), () => '2. โหลดเสร็จ')
      .then((value) => print(value));

  print('3. จบ');
}
