import 'dart:io';

void main() {
  // รับค่าจากผู้ใช้
  stdout.write('Enter number : ');
  String? input = stdin.readLineSync();

  // ตรวจสอบว่า input ไม่ใช่ null และแปลงเป็นเลขจำนวนเต็ม
  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);

    // ตรวจสอบว่าเป็นเลขคู่หรือเลขคี่
    if (number % 2 == 0) {
      print('$number is Even');
    } else {
      print('$number is Odd.');
    }
  } else {
    print('Please enter number');
  }
}
