//Tính trừu tượng

abstract class AnimalTruuTuong {
  late int head;
  void fly() {
    print(
        "Động  vật có thể bay con chó kế thừa từ class này nó cũng có thể bay");
  }

  void swim();
  void run();

  // Khi khai báo không có khối lệnh như vậy thì dart đã hiểu nó là abstract rồi  nếu như ngôn ngữ khác phải viết abstract
  // Bất kỳ class nào extends lại abstract class này đều phải bắt buộc overwrite cái method trừu tượng này

}

// Kế thừa từ abstract thông thường : chỉ cần override lại method trừu tượng
class Dog extends AnimalTruuTuong {
  late int legs;

  @override
// Vì kế thừa 1 class có abstract nên bắt buộc phải overwrite lại method abstract
  void swim() {
    print("override lại method abstract của class có abstract");
  }

  @override
  void run() {
    print("override lại method trừu tượng của class có abstract");
  }
}

//kế thừa từ interface : Thì cần phải override lại tất cả các method
class Cat implements AnimalTruuTuong {
  late int legs;

  @override
  late int head;

  @override
  void fly() {
    print(
        "interface - dùng implement thì phải override cả phương thức và method trừu tượng + cụ thể");
  }

  @override
  void swim() {
    print("override lại method trừu tượng của class có abstract");
  }

  @override
  void run() {
    print("override lại method trừu tượng của class có abstract");
  }
}

void main() {
  var dog = new Dog();
  dog.fly();
}
