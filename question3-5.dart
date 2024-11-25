import 'dart:io';
import 'dart:math';

String generateRandomPassword(int length) {
  const String chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_-+=<>?';
  Random rand = Random();
  StringBuffer password = StringBuffer();
 
  // สุ่มอักขระตามความยาวที่กำหนด
  for (int i = 0; i < length; i++) {
    password.write(chars[rand.nextInt(chars.length)]);
  }

  return password.toString();
}

void main() {
  // รับความยาวรหัสผ่านจากผู้ใช้
  stdout.write('Enter the length of the password: ');
  String? lengthInput = stdin.readLineSync();
  int length = int.tryParse(lengthInput ?? '') ?? 8;  // หากไม่ป้อนหรือป้อนข้อมูลไม่ถูกต้องให้ใช้ความยาว 8

  // สร้างรหัสผ่าน
  String password = generateRandomPassword(length);

  // แสดงผลรหัสผ่านที่สร้างขึ้น
  print('Generated password: $password');
}

