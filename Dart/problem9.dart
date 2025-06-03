import 'dart:io';

void main() {
  // Read size
  int? size = int.parse(stdin.readLineSync()!);

  // Read array elements
  List<int> arr = stdin.readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();

  // Sort array
  arr.sort();

  // Get median element (higher middle if even)
  int median = arr[(size ~/ 2)];

  // Sum elements less than median
  int sum = 0;
  for (int num in arr) {
    if (num < median) {
      sum += num;
    }
  }

  print(sum);
}
