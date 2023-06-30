void main() {
  List<int> numbers = [-2, 5, -10, 8, -4, 3, -7];
  int count = 0;
  int sum = 0;

  for (var number in numbers) {
    if (number < 0) {
      sum += number;
      count++;
    }
  }

  double average = count > 0 ? sum / count : 0;

  print('Average of negative numbers: $average');
}
