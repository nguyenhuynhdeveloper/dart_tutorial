//Các cách truyền đối số cho tham số Optional [posistional, named]

// import 'package:dart_tutorial/lib/oop/dart_oop_code4func.dart';
import './dart_oop_code4func.dart';

class Dog {
  int? head;
  int? legs;

  void run() {
    print("method của class");
  }

  void math(int? a, int? b, int? c) {
    print('$a -$b - $c');
  }
  //------------PARAMERTER FUNCTION
  //optional : Khi đưa vào [] , {} thì có thể truyền hoặc không truyền : ==> Có thể dùng default value
  //optional Posistional params

  // void math([int? a, int b == 1, int c == 1]) {
  //   print('$a -$b - $c');
  // }

  // void math(int? a, [int b == 1, int c == 1 ]) {
  //   print('$a -$b - $c');
  // }

  //optional named

  // void math({int a == 1, int b == 1, int c == 1}) {
  //   print("$a - $b - $c");
  // }

  // void math(int? a, {int? b, int? c}) {
  //   print("$a - $b - $c");
  // }

  //-------PARAMETER CONSTRUCTOR
  // ----------default constructor

  // Dog()   // Không có hàm kèm theo
  // Dog() {
  //   print("default constructor");
  // }    // Có hàm kèm theo

  //-------- Position parameter constructor

// Kiểu 1 : 
  // Kiểu constructor không truyền được default value
  // Dog(this.head, this.legs) {
  //   print("Không thể truyền tham số mặc định");
  // }

// Kiểu 2: 
  // ---------- []  : Position param constructor : Để có thể default param
  // //   : Có thể truyền tham số mặc định
  // Dog([this.head = 5, this.legs = 9]) {
  //   print("parmeter constructor");
  // }

  // Kết hợp
  // Dog( this.head  ,[this.legs = 9]) {
  //   print("parmeter constructor");
  // }

  // ------- {} : named constructor : params là 1 Object có các key có tên quy định sẵn 
  // Dog({this.head = 5, this.legs = 9}) {
  //   print("parmeter constructor");
  // }

  // Kết hợp
  // Dog( this.head  ,{this.legs = 9}) {
  //   print("parmeter constructor");
  // }

  //------- factory constructor
  Dog.Male() {
    print("Đây là con chó cái");
  
  }

  Dog.Female() {
    print("Đây là con chó đực");
  }

  //Sử dụng factory rồi thì không được viết default constructor , parameter constructor
  factory Dog(int type, {required int head, required int legs}) {
    // Bản chất factory design patern bình thường constructor chỉ tạo ra 1 constructor thôi. nhưng dùng factory thì tạo ra nhiều loại constructor mong muốn
    if (type == 0) {
      return Dog.Male();
      // factory kết hợp với named constructor thì code rất tường minh
    }
    return Dog.Female();
  }
}

void main() {
  //------ default constructor
  // var dog = new Dog();

  //------ parameter constructor :

  //position param constructor
  // var dog = new Dog(1, 2);

  //named param constructor
  // var dog = new Dog(head: 1, legs: 2);

  //------ named constructor
  // var dog = new Dog.Male();

  // factory + named constructor : ==> Quyết định constructor của đối tượng
  var dog = Dog(0, head: 1, legs: 4); // Sẽ đưa ra constructor là con chó đực
  dog.math(1, 2, 3);
  // dog.math(1, b: 2, c: 3);

  print('cái đầu ${dog.head}');
  print('Cái chân ${dog.legs}');
}
