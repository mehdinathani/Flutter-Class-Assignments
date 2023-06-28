void main() {
  List<int> originalList = [1, 2, 3, 4, 2, 3, 5, 6, 4];
  
  List<int> uniqueList = [];

  originalList.forEach((element) {
    if (!uniqueList.contains(element)) {
      uniqueList.add(element);
    }
  });

  print('Original list: $originalList');
  print('List with unique elements: $uniqueList');
}
