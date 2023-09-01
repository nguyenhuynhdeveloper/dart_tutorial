//Tính kế thừa
//Tính đa kế thừa
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

class DogMixed extends DogPhuQuoc with DogLaoHac {}

void main() {
  var dog = new DogMixed();
  dog.flyLaoHac();
}
