import 'dart:io';

void main() {

  List<String> line1 = stdin.readLineSync()!.trim().split(' ');
  int n = int.parse(line1[0]);
  int x = int.parse(line1[1]);


  List<int> arr = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();

  bool found = false;


  for (int mask = 0; mask < (1 << n); mask++) {
    int sum = 0;
    for (int i = 0; i < n; i++) {
      if ((mask & (1 << i)) != 0) {
        sum += arr[i];
      }
    }
    if (sum == x) {
      found = true;
      break;
    }
  }


  stdout.writeln(found ? 'Yes' : 'No');
}
