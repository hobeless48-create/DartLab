Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception('User ID ต้องมากกว่า 0 (ได้รับ: $userId)');
  }

  return {
    'id': userId,
    'name': 'สมชาย',
    'role': 'Admin',
  };
}

void main() async {
  print('เริ่มการดึงข้อมูลโปรไฟล์...\n');

  print('--- ทดสอบกรณี userId ถูกต้อง (userId = 1) ---');
  try {
    Map<String, dynamic> profile = await fetchProfile(1);
    print('ผลลัพธ์: โหลดโปรไฟล์สำเร็จ -> $profile');
  } catch (e) {
    print('ผลลัพธ์: เกิดข้อผิดพลาด -> $e');
  } finally {
    print('finally: จบการทำงานสำหรับ userId = 1\n');
  }

  print('--- ทดสอบกรณี userId ไม่ถูกต้อง (userId = 0) ---');
  try {
    Map<String, dynamic> profile = await fetchProfile(0);
    print('ผลลัพธ์: โหลดโปรไฟล์สำเร็จ -> $profile');
  } catch (e) {
    print('ผลลัพธ์: เกิดข้อผิดพลาด -> $e');
  } finally {
    print('finally: จบการทำงานสำหรับ userId = 0\n');
  }
}
