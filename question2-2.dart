import 'dart:io';

void main() {
  // Prompt the user to enter a character
  stdout.write('Enter a single character: ');
  String? input = stdin.readLineSync();

  // Validate input
  if (input != null && input.length == 1 && input.contains(RegExp(r'[a-zA-Z]'))) {
    // Convert input to lowercase for case-insensitivity
    String char = input.toLowerCase();

    // Check if the character is a vowel
    if ('aeiou'.contains(char)) {
      print('$input is a vowel.');
    } else {
      print('$input is a consonant.');
    }
  } else {
    print('Invalid input! Please enter a single alphabetic character.');
  }
}
