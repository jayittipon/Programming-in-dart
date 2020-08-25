import 'dart:io';
//4. จากแบบฝึกหัดหน้า 25-26 จงออกแบบคลาสรถหกล้อเพิ่มและเก็บอายุยาง หกเส้น

class vehicle {
  String brand;//ยี่ห้อ
  String color;//สี
  String model;//รุ่น
  String lPlate;//ป้ายทะเบียน

  //functions
  void showBrand() {print('Brand : $brand');}//แสดงข้อความรุ่น
  void showColor() {print('Color : $color');}//แสดงข้อความสี
  void showModel() {print('Model : $model');}//แสดงข้อความรุ่น
  void showlPlate() {print('License Plate : $lPlate');}//แสดงข้อความป้ายทะเบียน
  
  void setBrand(String n) {brand = n;}//รับค่ายี่ห้อเข้ามาเก็บไว้
  void setColor(String n) {color = n;}//รับค่าสีเข้ามาเก็บไว้
  void setModel(String n) {model = n;}//รับค่ารุ่นเข้ามาเก็บไว้
  void setlPlate(String n) {lPlate = n;}//รับค่าป้ายทะเบียนเข้ามาเก็บไว้
}

class car extends vehicle{
  String yearOfFron_Left_Tire, yearOfFron_Right_Tire;//ล้อหน้าซ้ายขวา
  String yearOfRear_Left_Tire, yearOfRear_Right_Tire;//ล้อหลังซ้ายขวาด้านนอก
  String yearOfRear_Left_Tire2, yearOfRear_Right_Tire2;//ล้อหลังซ้ายขวาด้านใน
  void showYearOfFronTire(){print('YearFLT : $yearOfFron_Left_Tire and YearFRT : $yearOfFron_Right_Tire');}//แสดงข้อความล้อหน้าซ้ายขวา
  void showYearOfRearTire(){print('YearFLT : $yearOfRear_Left_Tire and YearFRT : $yearOfRear_Right_Tire');}//แสดงข้อความล้อหลังซ้ายขวาด้านนอก
  void showYearOfRearTire2(){print('YearFLT : $yearOfRear_Left_Tire2 and YearFRT : $yearOfRear_Right_Tire2');}//แสดงข้อความล้อหลังซ้ายขวาด้านใน
  
  void setYearOfFronTire(String n, String m){//รับค่าล้อหน้าซ้ายขวาเข้ามาเก็บไว้
    yearOfFron_Left_Tire = n;//ล้อหน้าซ้าย
    yearOfFron_Right_Tire = m;//ล้อหน้าขวา
  }
  void setYearOfRearTire(String n, String m){//รับค่าล้อหลังซ้ายขวาด้านนอกเข้ามาเก็บไว้
    yearOfRear_Left_Tire = n;//ล้อหลังซ้ายด้านนอก
    yearOfRear_Right_Tire = m;//ล้อหลังขวาด้านนอก
  }
  void setYearOfRearTire2(String n, String m){//รับค่าล้อหลังซ้ายขวาด้านในเข้ามาเก็บไว้
    yearOfRear_Left_Tire2 = n;//ล้อหลังซ้ายด้านใน
    yearOfRear_Right_Tire2 = m;//ล้อหลังขวาด้านใน
  }
}

void main() {
  car m8=new car();//Class m8
  m8.setBrand('HINO');//กำหนดค่ายี่ห้อ
  m8.setModel('FC9JLLA');//กำหนดค่ารุ่น
  m8.setColor('White');//กำหนดค่าสี
  m8.setlPlate('M YX5012');//กำหนดค่าป้ายทะเบียน
  m8.setYearOfFronTire('2019', '2019');//กำหนดค่าล้อหน้าซ้ายขวา
  m8.setYearOfRearTire('2018', '2019');//กำหนดค่าล้อหลังซ้ายขวาด้านนอก
  m8.setYearOfRearTire2('2018', '2018');//กำหนดค่าล้อหลังซ้ายขวาด้านใน
  m8.showBrand();//แสดงยี่ห้อ
  m8.showModel();//แสดงรุ่น
  m8.showColor();//แสดงสี
  m8.showlPlate();//แสดงป้ายทะเบียน
  m8.showYearOfFronTire();//แสดงล้อหน้าซ้ายขวา
  m8.showYearOfRearTire();//แสดงล้อหลังซ้ายขวาด้านนอก
  m8.showYearOfRearTire2();//แสดงล้อหลังซ้ายขวาด้านใน
}