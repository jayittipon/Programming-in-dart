import 'dart:math';
import 'dart:io';

//นำค่าใน list มาบวกกัน
int sumList(List<int> x) {
  int sum = 0;
  for (int i = 0; i < x.length; i++) {
    sum = sum + x[i];
  }
  return sum;
}

//นำค่าใน list มาหาค่าเฉลี่ย
double avgList(List<int> x) {
  double avg = 0;
  int sum = sumList(x);
  avg = sum / x.length;
  return avg;
}

//นำค่าใน list มาหาส่วนเบี่ยงเบนมาตรฐาน
double sdList(List<int> x) {
  //สูตร sqrt( (E(xi-xBar)^2)/(n-1) )
  //xi ค่าทั้งหมด
  //xBar ค่าเฉลี่ย
  //n จำนวนเลขทั้งหมด
  int n;
  double sum = 0, ex = 0, ex2 = 0, b, sd;

  n = x.length;
  for (int i = 0; i < x.length; i++) {
    ex = x[i] - avgList(x); //xi-xBar
    ex2 = pow(ex, 2); //xi-xBar ยกกำลัง 2
    sum = sum + ex2; //นำค่า(xi-xBar)กำลัง2 มาบวกกัน
  }
  b = sum / (n - 1); //นำค่ามาหาร n-1
  sd = sqrt(b); //นำมา square root
  return sd;
}

void main(List<String> args) {
  List<int> k = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print('The total value of the list is ${sumList(k)}');

  print('The average value of the list is ${avgList(k)}');

  print('The standard deviation value of the list is ${sdList(k).toStringAsFixed(4)}');
}
