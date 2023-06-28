void main() {
  List<int> originalList = [3, 8, 12, 5, 10, 7, 4];
  
  List<int> evenNumbers = originalList.where((number) => number % 2 == 0).toList();

  print('Original list: $originalList');
  print('Even numbers: $evenNumbers');
}
