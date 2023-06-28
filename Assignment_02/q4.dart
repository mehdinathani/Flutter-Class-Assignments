//Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
import 'dart:math';

void main(){
  List<int> numbers = [1,2,3,4,5,6,7,8,9];

  int maxNumber = numbers.reduce(max);
  print(maxNumber);

  int minNumber = numbers.reduce(min);
  print(minNumber);
}