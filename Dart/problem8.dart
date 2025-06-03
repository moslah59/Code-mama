import 'dart:io';

void main() {
  String? s = stdin.readLineSync();

  if (s != null && s.length >= 3 && s.length <= 100) {
    String result = "";
aew
    for (int i = 0; i < s.length; i++) {
      if ((i + 1) % 3 == 0) {
        result += s[i].toUpperCase();
      } else {
        result += s[i];
      }
    }

    print(result);
  }
}
