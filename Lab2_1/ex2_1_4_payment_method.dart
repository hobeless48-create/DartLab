abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  String cardNumber;
  String cardHolder;

  CreditCard(this.cardNumber, this.cardHolder);

  @override
  void pay(double amount) {
    print('Paid $amount using Credit Card ($cardNumber, $cardHolder)');
  }
}

class PromptPay implements PaymentMethod {
  String phoneNumber;

  PromptPay(this.phoneNumber);

  @override
  void pay(double amount) {
    print('Paid $amount using PromptPay ($phoneNumber)');
  }
}

class CashOnDelivery implements PaymentMethod {
  String address;

  CashOnDelivery(this.address);

  @override
  void pay(double amount) {
    print('Paid $amount on Delivery to $address');
  }
}

void main() {
  List<PaymentMethod> payments = [
    CreditCard('1234-5678-9012-3456', 'Nobita Doraemon'),
    PromptPay('081-234-5678'),
    CashOnDelivery('99/9 Road, Bangkok'),
  ];

  for (var payment in payments) {
    payment.pay(1500.0);
  }
}

/*
1. ไม่ใช้ extends เพราะแต่ละวิธีจ่ายเงินไม่มีการแชร์โค้ดหรือคุณสมบัติร่วมกัน
2. เลือกใช้ implements เพราะต้องการกำหนดข้อตกลง (Contract) ของเมธอด pay ให้ทุกคลาสนำไปพัฒนาต่อเอง
3. วิธีนี้ช่วยให้แต่ละคลาสสามารถเขียนการทำงานของตัวเองได้อย่างอิสระโดยไม่ผูกมัดกัน
*/
