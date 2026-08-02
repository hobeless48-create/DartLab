// 1. อินเทอร์เฟซ (เสมือน "สัญญาตกลง")
// เราไม่ได้กำหนดว่า "จ่ายเงินอย่างไร" เราแค่กำหนดกฎว่า 
// "ทุกช่องทางการชำระเงินต้องมีฟังก์ชันเหล่านี้"
abstract class PaymentProcessor {
  bool pay(double amount);
  String getReceipt();
}

// 2. การสร้างคลาสจากอินเทอร์เฟซ (มีให้เป็นตัวอย่าง)
// การใช้ 'implements' หมายความว่า Dart จะบังคับให้เราเขียน "ทุกเมธอด" ที่อยู่ในอินเทอร์เฟซ
class PromptPayProcessor implements PaymentProcessor {
  String phoneNumber;
  
  PromptPayProcessor(this.phoneNumber);
  @override
  bool pay(double amount) {
    print("📱 กำลังสร้างคิวอาร์โค้ดพร้อมเพย์สำหรับ $phoneNumber...");
    print("💸 ได้รับเงินจำนวน ฿$amount ผ่านคิวอาร์โค้ดเรียบร้อยแล้ว");
    return true;
  }
  @override
  String getReceipt() {
    return "ใบเสร็จ: โอนเงินผ่านพร้อมเพย์";
  }
}

// 3. ความท้าทาย: สร้างคลาส CoinSlotProcessor ให้สมบูรณ์
class CoinSlotProcessor implements PaymentProcessor {
  double coinsInserted;
  CoinSlotProcessor(this.coinsInserted);
  
  // TODO 1: เขียนเมธอด pay() ตามที่ interface บังคับไว้
  // - ถ้า coinsInserted มากกว่าหรือเท่ากับ amount ให้ print "🪙 รับชำระเงินด้วยเหรียญจำนวน ฿$amount" และคืนค่า true
  // - ไม่เช่นนั้น ให้ print "❌ หยอดเหรียญไม่พอ" และคืนค่า false
  
  // TODO 2: เขียนเมธอด getReceipt() ตามที่ interface บังคับไว้
  // - คืนค่าสตริง เช่น "ใบเสร็จ: ชำระเงินผ่านช่องหยอดเหรียญ"
}

void main() {
  double laundryFee = 40.0;
  
  print("=== ผู้ใช้เลือกชำระผ่านพร้อมเพย์ ===\n");
  // สังเกตว่าชนิดตัวแปรคือ Interface (PaymentProcessor) ไม่ใช่ชื่อคลาสตรงๆ !
  PaymentProcessor method1 = PromptPayProcessor("081-234-5678");
  method1.pay(laundryFee);
  print(method1.getReceipt());
  
  print("\n=== ผู้ใช้เลือกหยอดเหรียญ ===\n");
  // TODO 3: สร้างอ็อบเจกต์ CoinSlotProcessor โดยกำหนดยอดเหรียญที่หยอดเป็น 50.0
  // เรียกใช้ pay(laundryFee) และพิมพ์ใบเสร็จออกมา
  
}
