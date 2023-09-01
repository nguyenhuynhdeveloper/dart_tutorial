void main(List<String> args) {
    // bool : true false
  // Toán tử so sánh

  int b = 10;
  int c = 20;

  bool trueFalse = b >= c;
  print('bool $trueFalse');

  // Toán tử logic
  bool bool1 = false || false; // Chỉ cần 1 thằng true -> return true
  print("bool toán tử hoặc:    $bool1");

  bool bool2 = true && true && false && true; // Tất cả phải là true -> thì mới return true
  print("bool toán tử và :  $bool2 ");

  bool bool3 = (true && true) || false;
  print("bool Có thể nhóm các điều kiện với nhau $bool3");

  bool bool4 = true;
  print("bool phủ định của 1 bool ${!bool4}");



  // !!!!!! Toán tử điều kiện : Toán tử 3 ngôi

  var aBool = 10;
  var bBool = 5;

// cấu trúc: condition ? value A : value B

// case1: condition  trả ra true thì sẽ nhận giá trị A
// case : condition trả ra false thì sẽ nhận giá trị B

  var dBool = (aBool > bBool) ? aBool : bBool; // 10
  print('condition $dBool');


  var firstName = 'Nguyen'; //this is a variable
  String lastName = 'Duc Hoang';

    //-----------bool
  bool isValidInput = firstName.isNotEmpty && lastName.isNotEmpty;
  print(isValidInput);
}