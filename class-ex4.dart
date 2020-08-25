//4. จากแบบฝึกหัดหน้า 25-26 จงออกแบบคลาสรถหกล้อเพิ่มและเก็บอายุยาง หกเส้น

class vehicle {
  String brand;
  String color;
  String model;
  String lPlate;
//functions
  void showBrand() {print('Brand : $brand');}
  void showColor() {print('Color : $color');}
  void showModel() {print('Model : $model');}
  void showlPlate() {print('License Plate : $lPlate');}
  void setBrand(String n) {brand = n;}
  void setColor(String n) {color = n;}
  void setModel(String n) {model = n;}
  void setlPlate(String n) {lPlate = n;}
}

class car extends vehicle{
  String yearOfFron_Left_Tire, yearOfFron_Right_Tire;
  String yearOfRear_Left_Tire, yearOfRear_Right_Tire;
  void showYearOfFronTire(){print('YearFLT : $yearOfFron_Left_Tire and YearFRT : $yearOfFron_Right_Tire');}
  void showYearOfRearTire(){print('YearFLT : $yearOfRear_Left_Tire and YearFRT : $yearOfRear_Right_Tire');}
  void setYearOfFronTire(String n, String m){
    yearOfFron_Left_Tire = n;
    yearOfFron_Right_Tire = m;
  }
  void setYearOfRearTire(String n, String m){
    yearOfRear_Left_Tire = n;
    yearOfRear_Right_Tire = m;
  }
}

void main() {
  car m8=new car();
  m8.setBrand('BMW');
  m8.setModel('M8');
  m8.setColor('Blue');
  m8.setlPlate('M YX5012');
  m8.setYearOfFronTire('2019', '2019');
  m8.setYearOfRearTire('2018', '2019');
  m8.showBrand();
  m8.showModel();
  m8.showColor();
  m8.showlPlate();
  m8.showYearOfFronTire();
  m8.showYearOfRearTire();
}