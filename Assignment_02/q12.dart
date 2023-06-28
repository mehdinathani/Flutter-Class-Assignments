void main() {
  List<String> originalList = ['apple', 'banana', 'orange', 'kiwi'];
  
  List<String> reversedList = List.from(originalList.reversed);

  print('Original list: $originalList');
  print('Reversed list: $reversedList');
}
