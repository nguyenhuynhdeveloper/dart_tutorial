 
import 'dart:core';

import 'package:dart_tutorial/tutorial/function/functions.dart';
import 'package:dart_tutorial/tutorial/class/models/bicycle.dart';
import 'package:dart_tutorial/tutorial/class/models/car.dart';
import 'package:dart_tutorial/tutorial/class/repositories/movie_repository.dart';
 
 void main(List<String> args) {
  
  //create an objet from class : tạo 1 đối tượng từ class
  //Abstract class cannot be initialized  : Abstract class : không thể khởi tạo đối tượng
  /*
  Vehicle vehicle = Vehicle('vehicle xx', 2022);
  print(vehicle);
  */
  // Tạo ra 1 đối tượng từ class Car

// Car đang có constructor dạng Position Param
  print('Init a Car object from class');
  Car car1 = Car("Lexus CT200H Hybrid", 2018, 119, 150);

  //update some fields
  car1.name = "Lexus CT200H F SPORT";
  car1.year = 2014;
  print('car1 $car1');

  // Chạy 1 mothod của đối tượng
  car1.describe();

  // Sử dụng phương thức gêtr
  print(car1.age);

  // Sử dụng phương thức setter
  car1.age = 12; //you cannot change the property unless you add setter method
  print(car1.year); // Thay đổi age làm property year thay đổi

  //add more class
  //create object from Bicycle class
  Bicycle bicycle1 = Bicycle(name: 'NEW TALON E+ 26', year: 2022, hasBasket: true);
  print(bicycle1);
  Bicycle bicycle2 = Bicycle(name: 'NEW TALON E+ 26', year: 2022, hasBasket: true);
  //bicycle1 and bicycle2 has the same contents
  print('haha');

  //How to compare contents of 2 objects ?  : Làm sao để so sánh nội dung của 2 object
  //-Write your own method
  /*
  if (bicycle1.equals(bicycle2)) {
    print('2 objects has the same contents');
  }
  */

  //override the == operator
  if (bicycle1 == bicycle2) {
    print('2 objects has the same values/contents');
  }

  Bicycle bicycle3 = bicycle1;
  // identical = same content , same location , same hashcode : thực chất 2 thằng là 1

  if (identical(bicycle1, bicycle3)) {
    print('bicycle1 and bicycle3 are identical');
  }

// hashCode : là 1 số nguyên tự động tính toán
  print(bicycle1.hashCode);
  print(bicycle2.hashCode);
  print(bicycle3.hashCode);

  if (bicycle1.hashCode == bicycle3.hashCode) {
    print('2 identical objects have the same hashCode');
  }

  // Copy tạo ra 1 đối tượng khác từ 1 đối tượng gốc : Có thay đổi chỉnh sửa -> Tạo ra 1 hàm copyWith
  //clone an object with copyWith Method : và có thể sửa 1 số trường tuỳ ý

  print(bicycle2);
  Bicycle bicycle4 = bicycle2.copyWith(year: 2019);
  Bicycle bicycle5 = bicycle2.copyWith(year: 2019, name: 'new bicycle');
  print(bicycle5);

  // static : Bạn có thể thêm 1 thuộc tính vào tất cả các đối tượng : mà không cần khởi tạo 1 đối tượng vẫn có thể lấy ra :
  //you can add a property value to all objects(class level) = static
  // 1 biến toàn cục. tênClass.static là xong

  print(Bicycle.maxSpeed);

  // List các đối tượng
  //an array of objects
  List<Car> cars = <Car> [
    Car("GLB 200 7G-DCT", 2021, 1.3, 163),
    Car("GLB 200 d 8G-DCT", 2020, 119, 150),
    Car("Lexus CT200H F SPORT", 2014, 109.7, 136),
    Car("Jetta Advance 1.6 TDI 105HP BlueMotion Technology DSG 7", 2011, 97.5, 105),
    Car("Jetta Sport 1.4 TSI 160HP DSG 7 speed", 2011, 84.8, 160),
    Car("Bentley Flying Spur W12", 2013, 243.7, 528),
    Car("Bentley Brooklands 2008", 2007, 412.6, 537),
    Car("Continental GTC 6.0 W12", 2019, 363.1, 635),
    Car("Qashqai DIG-T 158 4WD Auto", 2021, 81.3, 158),
    Car("Nissan Laurel JC32 2.8 D", 2020, 172.5, 90),
  ];

  cars.insert(0, Car("Nissan Murano Z50 3.5 (234HP)", 2004, 213.5, 234));
  //insert to the last
  cars.add(Car("Bentley 8 Litre", 1930, 487.2, 230));
  //print('cars: $cars');
  cars.asMap().forEach((index, element) {
    print('$index - $element');
  });

  print('demo asMap ${cars.asMap()}'); // asMap sẽ biến 1 List thành 1 Map  có key: index , value : item of List

  // where(()=>{}) : tìm kiếm các phần tử trong mảng

  //filter cars which year is between 2013 and 2016
  List<Car> filteredCars = cars.where((car) => car.year >= 2013 && car.year <= 2016).toList();
  print('Filtered cars:');
  //change an object

  //filteredCars[0].name = 'haha';
  filteredCars.asMap().forEach((index, car) {
    print('$index - $car');
  });
  print("sort the list, by horsePower");

  // sort() : sắp xếp các phần tử trong mảng
  //make a separated list, then sort
  List<Car> sortedCars = [...cars];
  sortedCars.sort(((car1, car2) => car2.horsePower.compareTo(car1.horsePower)));
  print('after cloned and sorted');
  sortedCars.forEach((car) {
    print(car);
  });

  // map() : tạo ra 1 mảng mới có số phần tử bằng mảng cũ nhưng phần tử đã được biến đổi  
  //get car's name and add to a separated list
  List<String> carNames = cars.map((car) => car.name).toList();
  print(carNames);

}