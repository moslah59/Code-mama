import 'dart:io';

void main() {

  // Read and parse input
  List<String> input = stdin.readLineSync()!.split(' ');
  int a = int.parse(input[0]);
  int b = int.parse(input[1]);

  // Function to calculate GCD using Euclidean algorithm
  int gcd(int x, int y) {
    while (y != 0) {
      int temp = y;
      y = x % y;
      x = temp;
    }
    return x;
  }

  // Output the GCD
  print(gcd(a, b));
}
