void main(List<String> args) {
  int age = 20;
  //int
  int year = 2020; // Vừa khai báo vừa gán giá trị
  int number = age + year;
  print("number $number");

  print("number---- + ${age + year}"); // Khi 1 hàm tính toán thì cần dấu {}
  print("number---- - ${age - year}");
  print("number---- * ${age * year}");
  print("number---- / ${age / year}");
  print("number----  ~/ ${age ~/ year}");

  //  print(++age);  // Cộng xong in luôn
  print(age++); // Chỉ cộng thôi chưa in
  print(age);

  int num; // Khai báo
  num = 10; // gán giá trí
  print(num);

  // Đặt con trỏ vào cuối dòng code : ctrl +c, Ctrl +v . copy xuống dòng dưới

  // Trong trương hợp muốn xoá rất nhiều ký tự giống nhau
  //quét chọn câu code muốn xoá -> ấn ctrl +d
  // delete
  print(num += 5);
  print(num -= 5);
  print(num *= 5);
  print("${num / 5}");

  //double : Số thực

  double numDouble = 10;

  double a = numDouble / 2.8;

  print("Double sử dụng cho số thực $a");

  // var leftTop = const Point(0, 0);
  // var rightBottom = const Point(200, 400);

  // print('dart math $leftTop');
  // print('dart math $rightBottom');

  // print(sqrt(a)); // Tính căn bậc hai
}
