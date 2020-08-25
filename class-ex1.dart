import 'dart:io';
//1. จงออกแบบคลาสเครื่องคิดเลข ที่สามารถรับค่าตัวเลขได้สองตัว และ สามารถ บวก ลบ ได้

class calculator {
  int x;//input 1
  int y;//input 2
  String c;//operation

  //รับค่าตัวเลข
  int inputNumber() {
    stdout.write('Input number: ');
    var s = stdin.readLineSync();
    int x = int.parse(s);
    return x;
  }

  //รับค่า operation
  String inputChar() {
    stdout.write('Input a character + -: ');
    var s = stdin.readLineSync();
    return s;
  }

  //แสดงผล
  void showCal() {
    if (c == '+')
      print('$x + $y = ${x + y}');//บวก
    else if (c == '-')
      print('$x - $y = ${x - y}');//ลบ
    else
      print('Error');
  }
}

void main() {
  calculator cal = new calculator();//Class cal
  cal.x = cal.inputNumber();//รับค่าตัวเลขชุดที่1
  cal.y = cal.inputNumber();//รับค่าตัวเลขชุดที่2
  cal.c = cal.inputChar();//รับค่า operation
  cal.showCal();//แสดงผล
}
