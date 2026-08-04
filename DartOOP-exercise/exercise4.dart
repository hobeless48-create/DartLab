  // Mixin
mixin CloudLogger {
  void logToCloud(String message) {
    print("[Cloud Log]: $message");
  }
}
 
  // Generic class
class AppDataCache<T> with CloudLogger { 
  T? cachedData;
 
  void saveData(T newData) {
    cachedData = newData;
    logToCloud("Saved: $cachedData");
  }
 
  void clearData() {
    cachedData = null;
    logToCloud("Cleared cache");
  }
}
  //test
void main() {
  print("=== String cache (User Token) ===\n");
  AppDataCache<String> tokenCache = AppDataCache<String>();
  tokenCache.saveData("ABC-123");
  tokenCache.clearData();
 
  print("\n=== Number cache (High Score) ===\n");
  AppDataCache<int> scoreCache = AppDataCache<int>();
  scoreCache.saveData(9999);
}
