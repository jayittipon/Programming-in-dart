import 'dart:io';
//3. จงออกแบบคลาสเครื่องคิดเลข ที่สามารถรับค่าตัวเลขได้สองตัว และ สามารถ บวก ลบ คูณ หาร ได้

class calculator {
  int x;
  int y;
  String c;
  int inputNumber() {
    stdout.write('Input number: ');
    var s = stdin.readLineSync();
    int x = int.parse(s);
    return x;
  }

  String inputChar() {
    stdout.write('Input a character + - * /: ');
    var s = stdin.readLineSync();
    return s;
  }

  void showCal() {
    if (c == '+')
      print('$x + $y = ${x + y}');
    else if (c == '-')
      print('$x - $y = ${x - y}');
    else if (c == '*')
      print('$x * $y = ${x * y}');
    else if (c == '/')
      print('$x / $y = ${x / y}');
    else
      print('Error');
  }
}

void main() {
  calculator cal = new calculator();
  cal.x = cal.inputNumber();
  cal.y = cal.inputNumber();
  cal.c = cal.inputChar();
  cal.showCal();
}
