import 'dart:io';

void main() {
  print('Enter three numbers:');
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  int min = a;

  if (b < min) min = b;
  if (c < min) min = c;

  print('Output:\n$min');
}
