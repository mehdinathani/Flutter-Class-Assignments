import 'dart:io';

void main() {
Map<String, String> credentials = {"abc@gmail.com":"123456","xyz@gmail.com":"456123","bilal@xyz.com":"abc123"}; 

String userId = "";
String userPassword = "";

bool isLogin = false;

while(!isLogin){
  stdout.write("Email ID: ");
  userId = stdin.readLineSync()!;

  stdout.write("Password: ");
  userPassword = stdin.readLineSync()!;

  if(credentials.containsKey(userId) && credentials[userId] == userPassword){
    isLogin = true;
    print("User  login successful.");
  }
  else{
    print("Invalid email or password. Please try again.");
  }
}
}