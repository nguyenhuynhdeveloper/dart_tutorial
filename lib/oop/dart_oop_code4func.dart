// https://www.youtube.com/watch?v=zuuBWUZEVLk&list=PLVDJsRQrTUz5ZiT0z_SGvOkrHllexhz72&index=1&t=1498s
//Code4Func //video 1 : cùng học Flutter-Dart OOP cho người mới bắt đầu
// Đây chính là file chính - file gốc - Mấy file khác là file tách ra từng thuộc tính

// main() là điểm chạy đầu tiên của app
// Dart giống Java 70 80%
// Trong class có Property , method
// Không giống java hay c# : Dart không có public, protected , private
// Dart cứ có _ trước biến hay class thì nó là private
// Class bản chất cũng là 1 object
// int?  : Khai báo biến có chấp nhận null

/*
 * Dart OOP
 *
 * Constructor : Là 1 bản thiết kế để tạo 1 đối tượng 1 object mới từ bản thiết kế đó
 * 1. Constructor: Default constructor , parameter constructor, Named constructor  là loại sử dụng thường xuyên nhất
 * named constructor : ý nghĩa có thể tạo ra multi constructor
 * có thể tạo ra rất nhiều constructor cho 1 class(object)
 *
 * 2. factory : Có thể quyết định đối tượng object sẽ thuộc constructor nào
 *
 * 3. setter- getter :Tính đóng gói
 *  đảm bảo tính bao đóng của ứng dụng . nếu để public có thể truy cập ở bất cứ đối tượng nào
 * Nếu muốn truy cập vào  thuộc tính hay method mà phải thông qua 1 hàm . chính là khái niệm setter getter
 * Thường tên hàm set get nên để đặt trùng tên với property pravite
 *
 * 4. extends : Tính kế thừa 1 class muốn kế thừa từ 1 class khác
 *
 * 5. abstraction : Tính trừu tượng
 * Trừu tượng 1 class : là có các phương thức trừu tượng chưa được xác định 
 * Sẽ có 1 phương thức abstract. tất cả những class nào extends cái class đó phải overwrite cái method đó chỉ cần override lại method không có ruột
 *
 * 6. interface : Tính trừu tượng plus
 * không giống các ngôn ngữ khác public interface() {...}
 * interface của Dart thông qua thằng abstract
 *
 * Khi chỉ sử dụng abstract thông thường sẽ dùng extends : và chỉ cần override lại các tất cả method không có ruột
 * Vậy khi sử dụng interface là sẽ dùng implements : khi đó phải overide lại tất cả : Property và method tất cả method có ruột hay không có ruột
 *
 * tính đóng gói , trong Dart không có Public, protected, prative
 * mà biến , phương thức , method , class nào mà prative thì có '_' ở đầu tên
 *
 *7. mixed : Tính đa kế thừa
 *
 *
 * 8.optional [posistional, nammed]  : các cách truyền tham số 
 *
 */

abstract class Animal {
  int _head = 0;
  void fly() {
    print(
        "Động  vật có thể bay con chó kế thừa từ class này nó cũng có thể bay");
  }

  // Khi khai báo không có khối lệnh như vậy thì dart đã hiểu nó là abstract rồi  nếu như ngôn ngữ khác phải viết abstract
  // Bất kỳ class nào extends lại cái class này đều phải bắt buộc overwrite các method trừu tượng này
  void swim();
  void fly1();
  void fly2();
}

//--------ĐA KẾ THỪA
class DogPhuQuoc {
  int speed = 100;
  void run() {
    speed = 1000;
  }
}

class DogLaoHac {
  void flyLaoHac() {
    print("Chó đang bay ");
  }
}

// Cách viết đa kế thừa 
class DogMixed extends DogPhuQuoc with DogLaoHac {}

// Tạo ra 1 class Dog kế thừa thừ class Animals 
// Cách viết kế thừa bình thường
class Dog extends Animal {
// class Dog implements Animal {     // Cách viết kế thừa của 1 class có abstract mà có sử dụng interface
  // Từ phiên bản Dart 2.0 đã không chấp nhận int null , mà phải gán 1 giá trị khác null cho biến khi khai báo int hay String
  //Đây là property
  int legs = 10;
// method của class
  void talk() {
    print('Gâu Gâu');
  }
  //TÍNH ĐÓNG GÓI
  // int _head = 0;  // Khi đã kế thừa _head từ class Animals thì k cần khai báo ở đây nữa
  // set arms (value){
  //   _head= value;
  // }

  // int get arms {
  //   return _head;
  // }

  set arms(value) => _head = value;
  int get arms => _head;

  //Có thế rút gọn cách viết hàm bằng cách viết lamda function

//CONSTRUCTOR : BẢN THIẾT KẾ
//Không viết thì mặc định là default constructor
  // Constructor phải trùng tên với class

  // default constructor: Không có tham số  : Không mấy khi sử dụng
  // Dog (){
  //   print("Default constructor");
  // }   // Đây chính là default constructor : không có tham số gì

  //parameter constructor : Có tham số
  // Có default constructor thì không được có parameter constructor

  // Dog({this.legs=0})   // Khi sử dụng named . thì 1 là phải truyền required bắt người dùng nhập . 2 là truyền tham số mặc định
  // Dog (int legs) {
  //   print('parameter constructor $legs');
  //   // this.legs = legs;
  // }

  //named constructor : có thể tạo ra vô số constructor
  Dog.Male() {
    print("Đây là con chó cái");
  }

  Dog.Female() {
    print("Đây là con chó đực");
  }

  //Sử dụng factory rồi thì không được viết default constructor , parameter constructor
  factory Dog(int type) {
    // Bản chất factory design patern bình thường constructor chỉ tạo ra 1 constructor thôi. nhưng dùng factory thì tạo ra nhiều loại constructor mong muốn
    if (type == 0) {
      return Dog.Male();
      // factory kết hợp với named constructor thì code rất tường minh
    }
    return Dog.Female();
  }

  // override lại các abstract trừu tượng - interfacet trừu tượng
  @override
  int _head = 10;

  @override
  void fly() {
    // TODO: implement fly
  }
  @override
// Vì kế thừa 1 class có abstract nên bắt buộc phải overwrite lại method abstract
  void swim() {
    print("override lại method abstract của class có abstract");
    // TODO: implement swim logic
  }

  @override
  void fly1() {
    //TODO: implement fly1
  }

  @override
  void fly2() {
    //TODO: implement fly2
  }
}

// Khi 1 class kế thừa từ 1 class có interface

void main() {
  // Sử dụng class Dog để tạo ra 1 object từ class đó

  // var dogDefault = new Dog()   // Khi khai báo và sử dụng như thế này chính là sử dụng default constructor

  var dog = new Dog(
      4); // Khi khai báo object có tham số như này là sử dụng Parametter constructor
  // Hoặc cũng có thể là khai báo kiểu trong class có dùng factory

  print(dog.legs); // Vẫn nhận giá trị 0
  dog.talk(); // nếu  _talk thì là prative thì sẽ không thể sử dụng được
  dog.fly(); // Đây là method kế thừa từ class Animals .
  dog.swim();

  dog.arms = 10; // Đây chính là set giá trị cho 1 Property pravite
  print(dog.arms); // Đây chính là lấy ra giá trị của 1 property pravite

  var dogMale =
      new Dog.Male(); //Khi khai báo như này chính là khai báo named constructor
  // Tạo ra 1 đối tượng là con chó cái

  var dogPhuQuocLaoHac = new DogMixed();
  dogPhuQuocLaoHac.flyLaoHac();
  dogPhuQuocLaoHac.run();
}
