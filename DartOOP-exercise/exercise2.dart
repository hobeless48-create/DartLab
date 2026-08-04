// User profile
class UserProfile {
  String username;
  
  // Private
  String _password = ""; 
  int _age = 0;         
  UserProfile(this.username);

  // Password
  set password(String newPassword) {
    if (newPassword.length < 6) {
      print("Error: Password too short");
    } else {
      _password = newPassword;
      print("Success: Password updated");
    }
  }

  int get age {
    return _age;
  }
  
  set age(int newAge) {
    if (newAge < 13) {
      print("Error: Under age limit");
    } else if (newAge > 120) {
      print("Error: Invalid age");
    } else {
      _age = newAge;
      print("Success: Age updated");
    }
  }
}

void main() {
  var myProfile = UserProfile("nu_student_26");
  
  // encapsulation
  print("=== Encapsulation Test (Password) ===\n");
  myProfile.password = "123"; 
  myProfile.password = "secureFlutterPass99"; 
  
  print("\n=== Encapsulation Test (Age) ===\n");
  myProfile.age = 10;
  myProfile.age = 20;
  print("Current age: ${myProfile.age}");
}
