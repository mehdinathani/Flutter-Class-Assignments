void main() {
  int n = 10; // The given number

  int a = 0; // First number in the sequence
  int b = 1; // Second number in the sequence

  print('Fibonacci sequence up to $n:');

  // Print the first number in the sequence
  print(a);

  // Calculate and print the subsequent numbers in the sequence
  while (b <= n) {
    print(b);

    // Calculate the next number in the sequence
    int sum = a + b;

    // Update the values of 'a' and 'b' for the next iteration
    a = b;
    b = sum;
  }
}
