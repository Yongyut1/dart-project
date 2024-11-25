import 'dart:io';

void main(){
  print("ยอดรวม : ");
  double? TotalBillAmount = double.parse(stdin.readLineSync()!);
  print("จำนวนคน : ");
  int NumOfPeople = int.parse(stdin.readLineSync()!);
  double AmountToPaid = TotalBillAmount/NumOfPeople;
  print("จำนวนที่ต้องจ่าย(ต่อคน) : $AmountToPaid");

 

}




