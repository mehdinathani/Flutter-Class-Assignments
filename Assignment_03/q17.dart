import 'dart:io';

void main() {
String loginId = "abc@gmail.com";
String loginPassword = "123456";

String userId = "";
String userPassword = "";

bool isLogin = false;

while(!isLogin){
  stdout.write("Email ID: ");
  userId = stdin.readLineSync()!;

  stdout.write("Password: ");
  userPassword = stdin.readLineSync()!;

  if(loginId == userId && loginPassword == userPassword){
    isLogin = true;
    print("User  login successful.");
  }
}
}