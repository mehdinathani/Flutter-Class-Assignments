void main() {
  List<int> originalList = [-2, 5, -10, 8, -3, 0, 15];
  
  List<int> positiveNumbers = originalList.where((number) => number >= 0).toList();

  print('Original list: $originalList');
  print('Positive numbers: $positiveNumbers');
}
