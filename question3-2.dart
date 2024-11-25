import 'dart:io';

bool isEven(int number) {
  // เช็คว่าเลขเป็นเลขคู่หรือไม่โดยใช้ตัวดำเนินการ modulus
  return number % 2 == 0;
}

void main() {
  // รับค่าจากผู้ใช้
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  // ตรวจสอบว่า input ไม่ใช่ null และแปลงเป็นเลขจำนวนเต็ม
  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);

    // ตรวจสอบว่าเลขนั้นเป็นเลขคู่หรือเลขคี่
    if (isEven(number)) {
      print('$number is even');
    } else {
      print('$number is odd');
    }
  } else {
    print('Invalid input! Please enter a valid number.');
  }
}
