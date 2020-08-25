import 'dart:io';
//2. จงออกแบบคลาสสัตว์ สามารถแสดงชื่อ และ อายุ และคลาส นก สามารถแสดงชื่อ อายุ ความยาวปีก และ ระยะบิน และ คลาส แมว สามารถแสดงชื่อ อายุ ความยาวขา และ ระยะกระโดด

class animal {
  String name;//ชื่อ
  int age;//อายุ

  //รับค่าชื่อ
  void inputName() {
    stdout.write('Input Name :');
    name = stdin.readLineSync();
  }

  //รับค่าอายุ
  void inputAge() {
    stdout.write('Input Age :');
    var x = stdin.readLineSync();
    age = int.parse(x);
  }

  //แสดงชื่อ
  void showName() {
    print('Name: $name');
  }

  //แสดงอายุ
  void showAge() {
    print('Age: $age');
  }
}

//Class นก
class bird extends animal {
  int wLength;//ความยาวปีก
  int fRange;//ระยะบิน 

  //รับค่าความยาวปีก
  void setLength() {
    stdout.write('Input length of wing :');
    var x = stdin.readLineSync();
    wLength = int.parse(x);
  }

  //รับค่าระยะบิน
  void setRange() {
    stdout.write('Input range of flyingee:');
    var x = stdin.readLineSync();
    fRange = int.parse(x);
  }

  //แสดงความยาวปีก
  void showLength() {
    print('The length of wing is $wLength');
  }

  //แสดงระยะบิน
  void showFlyRange() {
    print('The rang of flying is $fRange');
  }
}

//Class แมว
class cat extends animal {
  int lLength;//ความยาวขา
  int jRange;//ระยะกระโดด

  //รับค่าความยาวขา
  void setJumpRange() {
    stdout.write('Input range of jumping:');
    var x = stdin.readLineSync();
    jRange = int.parse(x);
  }

  //รับค่าระยะกระโดด
  void setlegLength() {
    stdout.write('Input Length of leg:');
    var x = stdin.readLineSync();
    lLength = int.parse(x);
  }

  //แสดงความยาวขา
  void showLegLength() {
    print('The length of leg is $lLength');
  }

  //แสดงระยะกระโดด
  void showjumpRange() {
    print('The range of jumping is $jRange');
  }
}
void main() {
  print('A Bird :');//แสดงข้อความนก
  bird b = new bird();//Class นก
  b.inputName();//รับค่าชื่อ
  b.inputAge();//รับค่าอายุ
  b.setLength();//รับค่าความยาวปีก
  b.setRange();//รับค่าระยะบิน
  b.showName();//แสดงชื่อ
  b.showAge();//แสดงอายุ
  b.showFlyRange();//แสดงความยาวปีก
  b.showLength();//แสดงระยะบิน

  print('A Cat :');//แสดงข้อความแมว
  cat c = new cat();//Class แมว
  c.inputName();//รับค่าชื่อ
  c.inputAge();//รับค่าอายุ
  c.setlegLength();//รับค่า
  c.setJumpRange();//รับค่า
  c.showName();//แสดงชื่อ
  c.showAge();//แสดงอายุ
  c.showLegLength();//แสดงแสดงความยาวขา
  c.showjumpRange();//แสดงแสดงระยะกระโดด
}
