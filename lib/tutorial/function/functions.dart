// Ngôn ngữ lập trình Dart cho người mới bắt đầu - 1.5 giờ
//https://www.youtube.com/watch?v=RbjOY6Ez-AU&list=PLWBrqglnjNl3DzS2RHds5KlanGqQ1uLNQ&index=44&t=712s

//function which return value

//function with Position parameters : Không thể truyền giá trị mặc định 
int add(int a, int b) {
  return a + b;
}

//function with Position parameters : Có thể truyền giá trị mặc định 
double minus([double x = 0, double y = 1]) {
  //default value
  print('x= $x - y = $y ');
  return x - y;
}

//function with named parameters --> khi sử dụng phải multiply(x: 5, y: 6)
double multiply({double x = 0, double y = 1}) {
  //default value
  print('x= $x, y = $y');
  return x * y;
}


//function which return 'no value'
sayHello([String name = "world"]) {
  print('Hello $name');
}

//!!!!! Cả Position parameters  và named parameters : đều có thể truyền default value

// function with Position and named parameter
//function which return a String
// Hàm có 1 dòng thôi có thể sử dụng one line function : hàm =>  Bỏ qua return , {}

String getUrl(String serverName, {int port = 8080}) => 'https://$serverName:$port'; // one line function

// ? = optional variable = nullable : Chấp nhận null -> có thể không truyền
String getDateTimeString({int? day, int? month, int? year}) {
  String stringDay = (day ?? 0) < 10 ? '0$day' : '$day';
  String stringMonth = (month ?? 0) < 10 ? '0$month' : '$month';

  // ?? means 'default value' : ?? là giá trị check giá trị nulllish

  return '$stringDay-$stringMonth-$year';
}

// Funtion : nhận function là 1 tham số 
// function with 'function as a parameter'
void doSomeTasks({int param1 = 0, int param2 = 0, Function? completion}) {
  print('Do something');
  completion!(param1 +param2);  // ! = make sure that it is  'NOT NULL'

}


