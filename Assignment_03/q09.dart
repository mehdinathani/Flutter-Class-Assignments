import 'dart:io';

bool isplaindrome(String str)   {
  String reversedStr = str.split("").reversed.join("");
  return str == reversedStr;
}

void main() {
stdout.write("Enter a String to check.");
String input = stdin.readLineSync()!;

if (isplaindrome(input)){
  print("$input is a Plaindrome.");
}
else{
  print("$input is not a plaindrome.");
}
}