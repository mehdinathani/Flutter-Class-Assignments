void main() {
  List<String> strings = ['apple', 'banana', 'orange', 'banana', 'kiwi', 'apple'];
  
  List<String> uniqueStrings = [];

  strings.forEach((element) {
    if (!uniqueStrings.contains(element)) {
      uniqueStrings.add(element);
    }
  });

  print('Original list: $strings');
  print('List without duplicates: $uniqueStrings');
}
