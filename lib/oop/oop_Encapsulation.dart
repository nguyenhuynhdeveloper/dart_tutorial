//Tính đóng gói

class Dog {
  int? _arms;
  //Constructor
  Dog() {
    print("defaut constructor");
  }

  //lamda fuction - one line function
  set arms(value) => _arms = value;
  int? get arms => _arms;   // Trong trường hợp không muốn bên ngoài trỏ thẳng vào biến private _arms
}

void main() {
  var dog = new Dog();
  dog.arms;
  print(dog.arms);
}
