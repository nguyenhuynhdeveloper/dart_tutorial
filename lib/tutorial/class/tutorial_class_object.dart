void main(List<String> args) {
  var dogPhuQuoc = Dogs(name: "chó", age: 17, legs: 7);
  Dogs dogCo = Dogs(name: "chó 2", age: 19, legs: 5);

  // dogPhuQuoc.name;
  // print(dogPhuQuoc.name);
  // print(dogPhuQuoc.age);
  // print(dogPhuQuoc.legs);
  // dogPhuQuoc.sing();

  // dogCo.sing();
  // dogCo.run();

  Cat cat1 = Cat(name: "con mèo 1", age: 10);

  Cat cat2 = Cat(name: "con mèo 2");
  cat2.name = "con mèo 3"; // Sửa thuộc tính của đối tượng Khi đã khai báo từ khuôn ( constructor )

  print("object");

  // Fish fish1 = Fish(nameFish: "nameFish", ageFish: 10, name: "name", age: 20);
}

// Tên class phải viết hoa
class Dogs {
  //Các thuộc tính của đối tượng nếu được viết bởi class này có : Property
  String name = "con chó";
  int age = 18;
  int legs = 4; // default param của nó thôi

//Phải có hành động , Phương thức . method

  void sing() {
    print("bố đang hát");
  }

  void run() {
    print("Con chó đang chạy ");
  }

  Dogs({required this.name, required this.age, required this.legs}); // Đây là constructor : Bản thiết kế  Đây chính  là cái khuôn để tạo ra các con chó
}

// Viết class chỉ 1 mục đích duy nhất thôi , đó là ra các đối tượng có dặc điểm giống nhau

// Cách tạo ra các đối tượng trong code
// con chó -- sau này rất nhiều con chó khác nhau --> tạo 1 cái khuôn để sau này chỉ cần gọi phát là có luôn

// Cái khuôn  -- class
// 1 con chó được tạo ra từ cái khuôn đó -- object

//Mấy cái key hay dùng nhiều trong vs code

// ĐẶT TÊN Class thì phải viết hoa

class Cat {
  String name = 'Con mèo';
  int? age = 10;

  void run() {
    print("Con mèo đang chạy");
  }

  Cat({
    required this.name,
    this.age,
  }); // required : là bắt buộc phải nhập tham số đó cho nó

  //this : chính nó
}

//Map

// Có những trường hợp khuyến cáo dự án rất to thì sẽ dùng

class Animal {
  String? name = "động vật";
  int age = 10;

  void runAndSwim() {
    print('Động vật có thể chạy hoặc bơi');
  }

  Animal({  this.name, required this.age});
}

class Fish extends Animal {
  String nameFish = "con cá";
  int ageFish = 10;

  @override   //Viết đè 
  runAndSwim() {
    print("Bố mày chỉ biết bơit hôi");
  }

  Fish({required this.nameFish, required this.ageFish,  super.name, required super.age}); // super : tức là thằng bố nó , cái mà nó kế thừa

}
