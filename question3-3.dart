import 'dart:io';

void createUser(String name, int age, [bool isActive = true]) {
  // Create a user and print the details
  print('\nUser Name: $name');
  print('User Age: $age');
  print('Is Active: $isActive');
}
 
void main() {
  // Get user input for name
  stdout.write('Enter name: ');
  String? name = stdin.readLineSync();

  // Get user input for age
  stdout.write('Enter age: ');
  String? ageInput = stdin.readLineSync();
  int? age = int.tryParse(ageInput ?? '');

  // Validate inputs before calling createUser
  if (name != null && age != null && age > 0) {
    createUser(
      name,
      age,
    );
  } else {
    print('Invalid input! Please enter valid values.');
  }
}
