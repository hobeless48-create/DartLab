// Interface
abstract class PaymentProcessor {
  bool pay(double amount);
  String getReceipt();
}

class PromptPayProcessor implements PaymentProcessor {
  String phoneNumber;
  
  PromptPayProcessor(this.phoneNumber);

  @override
  bool pay(double amount) {
    print("Processing PromptPay for $phoneNumber...");
    print("Received: $amount");
    return true;
  }

  @override
  String getReceipt() {
    return "Receipt: PromptPay payment";
  }
}

class CoinSlotProcessor implements PaymentProcessor {
  double coinsInserted;
  CoinSlotProcessor(this.coinsInserted);
  
  @override
  bool pay(double amount) {
    if (coinsInserted >= amount) {
      print("Received coins: $amount");
      return true;
    } else {
      print("Error: Not enough coins");
      return false;
    }
  }
  
  @override
  String getReceipt() {
    return "Receipt: Coins payment";
  }
}

void main() {
  double laundryFee = 40.0;
  
  print("=== PromptPay payment ===\n");
  PaymentProcessor method1 = PromptPayProcessor("081-234-5678");
  method1.pay(laundryFee);
  print(method1.getReceipt());
  
  print("\n=== Coins payment ===\n");
  PaymentProcessor method2 = CoinSlotProcessor(50.0);
  method2.pay(laundryFee);
  print(method2.getReceipt());
}
