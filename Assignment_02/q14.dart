void main() {
  List<int> originalList = [5, 2, 9, 1, 7];
  
  List<int> sortedList = List.from(originalList);
  sortedList.sort();

  print('Original list: $originalList');
  print('Sorted list: $sortedList');
}
