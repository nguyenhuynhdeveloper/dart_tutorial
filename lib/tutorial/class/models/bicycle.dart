// import 'dart:html';

import 'vehicle.dart';

class Bicycle extends Vehicle {

  static final maxSpeed = 100;  // Biến static có thể trỏ đến thoải mái : lưu trữ những giá trị không đổi

  bool hasBasket;
  // Constructor with labeled parameters
  Bicycle({required String name, required int year, required this.hasBasket}) : super(name, year);     // Kế thừa 2 tham số trong constructor của Vehicle

  @override
  String toString() => '${super.toString()}, hasBasket= $hasBasket';       // Tái sử dụng method của Vehicle

// tự tạo ra hàm equals : quy định 2 đối tượng bằng nhau khi nào 
// identical là so sánh địa chỉ ô nhớ
  bool equals(Object other) => identical(this, other) || (other is Bicycle && name == other.name && year == other.year && hasBasket == other.hasBasket);

  // override the == operator : override lại == operator
  // rất tiện  nếu 1 đối tượng có 100 trường - so sánh 20 trường bằng nhau là bằng nhau 
  
  @ override // override biểu thị lớp cha đã cso rồi 
  bool operator == (Object other) => identical(this, other) || (other is Bicycle && name == other.name && year == other.year && hasBasket == other.hasBasket);

// copyWith = clone and change property's value
 Bicycle  copyWith({String? name, int? year, bool? hasBasket}) =>
      Bicycle(name: name ?? this.name, year: year ?? this.year, hasBasket: hasBasket ?? this.hasBasket);
      // Bicycle Viết đầu tiên thể hiện giá trị return ra của hàm là 1 đối tượng của Class Bicycle
}
