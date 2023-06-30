void main() {
  List<int> numbers = [5, 3, 8, 2, 9, 1, 4, 7, 6];

  // Initialize the maximum and minimum variables with the first element of the list
  int maximum = numbers[0];
  int minimum = numbers[0];

  // Loop through the list and update the maximum and minimum variables if a larger or smaller element is found
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maximum) {
      maximum = numbers[i];
    }

    if (numbers[i] < minimum) {
      minimum = numbers[i];
    }
  }

  print("Maximum: $maximum");
  print("Minimum: $minimum");
}
