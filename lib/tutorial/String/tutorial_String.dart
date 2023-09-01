// Khai báo biến :
/**
  String: Chữ, ký tự 
  int : số nguyên 
  double : số thực
  var : nhận được tất cả các kiểu
  dynamic: nhận được tất cả các kiểu
  List<String> : 1 mảng 
  Map<String , dynamic> : đối tượng có key và value
  */

void main(List<String> args) {
  // String a_String = "abasdljasdf";

  // substring(5, 7): Cắt chuỗi từ vị trí thứ 5 tới vị trí thứ 7 
  // String b_String = a_String.substring(5, 7);

  // print(b_String);

  int a_int = 10;
  // ignore: non_constant_identifier_names
  // toString() : Chuyển các kiểu dữ liệu khác sang String 

  String a_string = a_int.toString(); //convert từ int - String
  print('parse toString $a_string');

// parse(String_name) : Chuyển string -> int 
  String b_string = "123";
  int b_int = int.parse(b_string);
  int? c_int = int.tryParse(b_string);


  print('parse $b_int');

  print("Flutter");
  print('Flutter-------');


    //----------------String
   var firstName = 'Nguyen'; //this is a variable
  String lastName = 'Duc Hoang';
  print('firstname: $firstName, lastname : $lastName');
  String fullname = '$firstName $lastName';
  print(fullname);
  
  //multi-line string :Sử dụng 3 dấu ngoăc đơn ''' ''' : bên trong sử dụng enter bình thường
  String poem = '''
    In a dark night,
    With anxious love inflamed,
    Forth unobserved I went, 
  ''';
  print(poem);
  print(r'This is a raw string \u128512'); // Các ký tự đặc biệt
  print('This is copyright: \u00a9');

  //check if a string is empty
  if (poem.isEmpty) {
    print('This string is empty');
  } else {
    print('This string is NOT empty');
  }

}
