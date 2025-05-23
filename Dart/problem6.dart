import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  const int MOD = 1000000007;

  // Handle base cases
  if (n == 0) {
    print(0);
    return;
  } else if (n == 1) {
    print(1);
    return;
  }

  int prev = 0; // F0
  int curr = 1; // F1
  int next = 0;

  for (int i = 2; i <= n; i++) {
    next = (prev + curr) % MOD;
    prev = curr;
    curr = next;
  }

  print(curr);
}
