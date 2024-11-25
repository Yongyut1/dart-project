void main() {
  for (int number = 1; number <= 9; number++) {
    print('Multiplication Table of $number:');
    for (int i = 1; i <= 12; i++) {
      print('$number x $i = ${number * i}'); 
    }
    print(''); // Add a blank line for readability
  }
}
