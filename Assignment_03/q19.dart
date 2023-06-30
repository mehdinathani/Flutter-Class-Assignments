import 'dart:io';

void main() {
  // Input the list of numbers
  stdout.write("Enter a list of numbers (comma-separated): ");
  String input = stdin.readLineSync()!;
  List<String> numberStrings = input.split(",");
  
  List<int> numbers = [];
  for (var numberString in numberStrings) {
    numbers.add(int.parse(numberString.trim()));
  }
  
  // Print numbers greater than 5
  print("Numbers greater than 5:");
  for (var number in numbers) {
    if (number > 5) {
      print(number);
    }
  }
}
