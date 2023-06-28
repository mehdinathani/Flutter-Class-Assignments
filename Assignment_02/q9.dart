import 'dart:math';

void main() {
  List<int> numbers = [5, 10, 3, 8, 2];
  
  int maxNumber = numbers.reduce(max);
  
  print('Maximum value: $maxNumber');
}
