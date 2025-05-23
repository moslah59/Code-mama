import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int base = int.parse(input[0]);
  int height = int.parse(input[1]);

  int area = (base * height) ~/ 2;
  print(area);
}
