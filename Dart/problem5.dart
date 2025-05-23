import 'dart:io';

void main() {

  int n = int.parse(stdin.readLineSync()!);

  if (n <= 1) {
    print('$n is not a prime number.');
    return;
  }

  bool isPrime = true;

  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime) {
    print('$n is a prime number.');
  } else {
    print('$n is not a prime number.');
  }
}
