// หมายเหตุ: ในแอป Flutter จริง คลาสนี้จะแยกอยู่ในไฟล์ (library) ของมันเอง 
// การใช้ขีดล่าง (_) ในภาษา Dart จะช่วยซ่อนตัวแปรจากไฟล์อื่น ๆ
class UserProfile {
  String username;
  
  // เครื่องหมายขีดล่างทำให้ตัวแปรเหล่านี้เป็น private
  // โค้ดจากภายนอกไม่ควรเข้ามาแก้ไขโดยตรง!
  String _password = ""; 
  int _age = 0;         
  UserProfile(this.username);

  // ตัวอย่าง: Setter ที่ทำหน้าที่เป็นเหมือน "พนักงานรักษาความปลอดภัย" ให้กับรหัสผ่าน
  set password(String newPassword) {
    if (newPassword.length < 6) {
      print("❌ ข้อผิดพลาด: รหัสผ่านต้องมีความยาวอย่างน้อย 6 ตัวอักษร");
    } else {
      _password = newPassword;
      print("✅ อัปเดตรหัสผ่านเรียบร้อยแล้ว");
    }
  }

  // TODO 1: สร้าง Getter สำหรับ age
  // คำใบ้: ต้องคืนค่าเป็น int และใช้คีย์เวิร์ด 'get'
  
  // TODO 2: สร้าง Setter สำหรับ age
  // - ถ้าอายุน้อยกว่า 13 ให้ print "❌ ข้อผิดพลาด: ต้องอายุ 13 ปีขึ้นไปจึงจะใช้งานแอปได้"
  // - ถ้าอายุมากกว่า 120 ให้ print "❌ ข้อผิดพลาด: อายุไม่ถูกต้อง"
  // - นอกเหนือจากนั้น ให้อัปเดตค่า _age และ print "✅ บันทึกอายุแล้ว"
  
}

void main() {
  var myProfile = UserProfile("nu_student_26");
  print("=== ทดสอบ ENCAPSULATION ของรหัสผ่าน ===\n");
  
  // โค้ดนี้จะเรียกใช้งาน Setter ที่เราเขียนไว้ด้านบน:
  myProfile.password = "123"; 
  myProfile.password = "secureFlutterPass99"; 
  print("\n=== ทดสอบ ENCAPSULATION ของอายุ ===\n");
  
  // TODO 3: ลองกำหนดอายุเป็น 10 (ควรแสดงข้อผิดพลาดทางหน้าจอ)
  
  // TODO 4: ลองกำหนดอายุเป็น 20 (ควรสำเร็จ)
  
  // TODO 5: พิมพ์อายุออกทางคอนโซลโดยใช้ Getter ที่คุณสร้างขึ้นใน TODO 1
}
