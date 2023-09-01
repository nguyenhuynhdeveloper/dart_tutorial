// defile a class
//abstract class là class dở dang : không tạo được đối tượng từ class abstract

// abstract class Vehicle {
class Vehicle {
  String name;
  int year;
  
  // Constructor : tham số kiểu Position 
  Vehicle(this.name, this.year);

  // Vehicle(this.name, this.year){
  //   print("demo -- vừa tạo 1 đối tượng Vehicle");
  // }    // Hoặc constructor có thể chạy 1 hàm ở phía dưới - chạy kèm theo khi tạo đối tượng

  // Thực thi lại hàm toString()
  @override
  String toString()  => 'name: $name year: $year';
  
}
