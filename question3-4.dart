import 'dart:io';

double calculateArea([double length = 1, double width = 1]) {
  // Calculate the area of the rectangle
  return length * width;
}

void main() {
  // Get the length from user input (same line prompt)
  stdout.write("Enter the length of the rectangle (Defult 1): ");
  double? length = double.tryParse(stdin.readLineSync()!) ?? 1;

  // Get the width from user input (same line prompt)
  stdout.write("Enter the width of the rectangle (Defult 1): ");
  double? width = double.tryParse(stdin.readLineSync()!) ?? 1;

  // Calculate the area
  double area = calculateArea(length, width);
 
  // Display the result
  print('\nThe area of the rectangle is: $length x $width = $area');
}
