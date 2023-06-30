void main() {
  int limit = 10; // Change this value to the desired limit

  int sumOfSquares = 0;

  for (int i = 1; i <= limit; i++) {
    if (i % 2 != 0) {
      sumOfSquares += i * i;
    }
  }

  print("Sum of squares of odd numbers up to $limit: $sumOfSquares");
}
