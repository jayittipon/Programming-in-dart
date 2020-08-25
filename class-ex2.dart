import 'dart:io';
//2. จงออกแบบคลาสสัตว์ สามารถแสดงชื่อ และ อายุ และคลาส นก สามารถแสดงชื่อ อายุ ความยาวปีก และ ระยะบิน และ คลาส แมว สามารถแสดงชื่อ อายุ ความยาวขา และ ระยะกระโดด
class animal {
  String name;
  int age;
  void inputName() {
    stdout.write('Input Name :');
    name = stdin.readLineSync();
  }

  void inputAge() {
    stdout.write('Input Age :');
    var x = stdin.readLineSync();
    age = int.parse(x);
  }

  void showName() {
    print('Name: $name');
  }

  void showAge() {
    print('Age: $age');
  }
}

class bird extends animal {
  int wLength;
  int fRange;
  void setLength() {
    stdout.write('Input length of wing :');
    var x = stdin.readLineSync();
    wLength = int.parse(x);
  }

  void setRange() {
    stdout.write('Input range of flyingee:');
    var x = stdin.readLineSync();
    fRange = int.parse(x);
  }

  void showLength() {
    print('The length of wing is $wLength');
  }

  void showFlyRange() {
    print('The rang of flying is $fRange');
  }
}

class cat extends animal {
  int lLength;
  int jRange;
  void setJumpRange() {
    stdout.write('Input range of jumping:');
    var x = stdin.readLineSync();
    jRange = int.parse(x);
  }

  void setlegLength() {
    stdout.write('Input Length of leg:');
    var x = stdin.readLineSync();
    lLength = int.parse(x);
  }

  void showLegLength() {
    print('The length of leg is $lLength');
  }

  void showjumpRange() {
    print('The range of jumping is $jRange');
  }
}

void main() {
  print('A Bird :');
  bird b = new bird();
  b.inputName();
  b.inputAge();
  b.setLength();
  b.setRange();
  b.showName();
  b.showAge();
  b.showFlyRange();
  b.showLength();
  print('A Cat :');
  cat c = new cat();
  c.inputName();
  c.inputAge();
  c.setlegLength();
  c.setJumpRange();
  c.showName();
  c.showAge();
  c.showLegLength();
  c.showjumpRange();
}
