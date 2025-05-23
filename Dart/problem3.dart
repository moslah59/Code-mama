import 'dart:io';

void main() {

  // Read the input and parse it as a double
  double celsius = double.parse(stdin.readLineSync()!);

  // Convert to Fahrenheit
  double fahrenheit = (celsius * 9 / 5) + 32;

  // Print the result with two decimal points
  print('The temperature in Fahrenheit is: ${fahrenheit.toStringAsFixed(2)}');
}
