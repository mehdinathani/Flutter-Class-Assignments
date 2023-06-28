void main() {
  List<int> originalList = [2, 4, 6, 8, 10];

  List<int> squaredList = originalList.map((number) => number * number).toList();

  print('Original list: $originalList');
  print('Squared list: $squaredList');
}
