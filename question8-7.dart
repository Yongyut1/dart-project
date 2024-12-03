import 'dart:async';
import 'dart:io';

void main() {
  // Prompt user to enter the first integer
  print('Enter the first integer:');
  int? num1 = int.tryParse(stdin.readLineSync()!);

  // Prompt user to enter the second integer
  print('Enter the second integer:');
  int? num2 = int.tryParse(stdin.readLineSync()!);

  // Check if both inputs are valid integers
  if (num1 == null || num2 == null) {
    print('Invalid input. Please enter valid integers.');
    return;
  }

  print('Calculating the sum...');
  
  // Wait for 3 seconds before printing the result
  Future.delayed(Duration(seconds: 3), () {
    int sum = num1 + num2;
    print('The sum of $num1 and $num2 is $sum.');
  });
}
