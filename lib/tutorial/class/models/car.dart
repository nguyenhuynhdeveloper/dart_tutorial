import 'vehicle.dart';

class Car extends Vehicle {
  // Property
  double engineSize = 0.0;
  double horsePower = 0.0;

  // Constructor : super phương thức khởi tạo của lớp cha
  // name và year là 2 property được kế thừa từ Class Vehicle 
  Car(String name, int year, this.engineSize, this.horsePower) : super(name, year); // super là 2 thuộc tính kế thừa từ Vehicle

  
  @override
  String toString() => '${super.toString()}, engineSize : $engineSize, horsePower: $horsePower'; // super : là đại diện cho lớp cha

  //add more method
  void describe() {
    print('This car runs with engineSize: $engineSize, horsePower: $horsePower');
  }

  //getter/setter methods : Phương thức gọi dữ liệu ra hoặc chúng ta thay đổi thuộc tính
  // get là 1 cái hàm phụ thuộc vào các thuộc tính : mà trả ra 1 giá trị 
  // set là 1 cái hàm phụ thuộc vào các thuộc tính : mà thay đổi giá trị của các thuộc tính

  int get age => DateTime.now().year - year;

  set age(int value) {
    year = DateTime.now().year - value;  // thay đổi giá trị của year làm age thay đổi theo 
  }
}
