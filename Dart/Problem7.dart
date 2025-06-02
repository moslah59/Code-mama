import 'dart:io';

void main() {

  String input = stdin.readLineSync()!;
  bool hasVowel = false;
  String vowels = "aeiouAEIOU";

  for (int i = 0; i < input.length; i++) {
    if (vowels.contains(input[i])) {
      hasVowel = true;
      break;
    }
  }

  if (hasVowel) {
    print("The string contains a vowel.");
  } else {
    print("The string does not contain any vowel.");
  }
}
