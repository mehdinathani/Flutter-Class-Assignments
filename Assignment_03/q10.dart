import 'dart:io';

void main() {
stdout.write("Please type a number to get cube.");
String? input = stdin.readLineSync()!;
int number = int.parse(input);

var cube = 0;

for(var i = 1; i<=number; i++ ){
  cube =  i * i * i;
}
print("Number is $number and cube of $number is $cube");
}