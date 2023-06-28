import 'dart:io';
import 'dart:math';

void main() {
  List<int> numbers = [];

  for (int i = 1; i <= 3; i++) {
    stdout.write('Enter number $i: ');
    String? input = stdin.readLineSync();
    int number = int.parse(input!);
    numbers.add(number);
  }

  //print(numbers[0]);

  int maxNumber = numbers.reduce(max);
  int minNumber = numbers.reduce(min);
  
  print('The greatest number is: $maxNumber');
  print('The lowest number is: $minNumber');
}
