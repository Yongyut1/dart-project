import 'dart:io';

double maxNumber(double num1, double num2, double num3) {
  // ใช้ ternary operator เพื่อหาค่ามากที่สุด
  return (num1 > num2)
      ? (num1 > num3 ? num1 : num3)
      : (num2 > num3 ? num2 : num3); 
}

void main() {
  print('Enter the first number:');
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');

  print('Enter the second number:');
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');

  print('Enter the third number:');
  double? num3 = double.tryParse(stdin.readLineSync() ?? '');

  if (num1 != null && num2 != null && num3 != null) {
    double largest = maxNumber(num1, num2, num3);
    print('The largest number is: $largest');
  } else {
    print('Invalid input! Please enter valid numbers.');
  }
}
