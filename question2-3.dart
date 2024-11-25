void main() {
  int number = 5;

  print('Multiplication Table of $number:');
  
  for (int i = 1; i <= 12; i++) {
    print('$number x $i = ${number * i}');
  }
}
