// void main() {
//   //String, int, double, bool, toán tử 3 ngôi, toán tử so sánh , function : không có tham số, có tham số()

// //------------------ CÁCH 1-------------------------
// // function : có tham số --- và bắt buộc call hàm phải truyền đủ tham số -- vì nó không có default param
//   int a_function(int a, int b) {
//     // Khối lệnh thực thi
//     var c = 4;
//     a = a + 4;
//     return a + b;
//   }

//   a_function(4, 2); // Bắt buộc phải truyền đủ tham số cho nó
//   print('function ${a_function(4, 2)}');

// //------------------- CÁCH 2----------------------------
// // function : có tham số --- Không bắt buộc truyền đủ tham số -- vì nó có default param
//   int b_fuction([int a = 1, int b = 2]) {
//     // Khi mà dùng [] thì bắt buộc phải truyền default cho hết các tham số trong ngoặc []
//     return a + b;
//   }

//   print("funtion ${b_fuction(3)}");

//   // TOÁN TỬ ?
//   //QUAN TRỌNG : int? b , String? , double? , bool? : nó nói rằng biến biến b có thể nhận giá trị null
//   // khi khai báo int? b;   // thì mặc định b đang là null

//   //TOÁN TỬ ??

//   // int b = a ?? 2 ;  // Nó sẽ nó rằng
//   //case 1:  a mà có giá trị thì  b = a
//   // case 2: a không có giá trị ( null) b = 2

//   int? a; // a nó đang là null
//   int? b = a ?? 2;

//   print("?? $b");

//   int c_funtion([int a = 1, int? b]) {
//     // return a + b;   // int + null ---? báo lỗi
//     return a + (b ?? 2);
//   }

//   print("function ${c_funtion(3)}");
//   print("function ${c_funtion(3, 5)}");

//   int? a_null = null; // Ban đầu mặc định c_null phải nhận giá trị kiểu int : nhưng khi có ? thì có thể nhận null\
//   print("null a_null ${a_null}");

//   String? b_null;
//   b_null = null;

//   print("null d_null ${b_null}");

//   int d_function(int a, int b, [int c = 2, int d = 3]) {
//     return a + b + c + d;
//   }

//   print("d_funtion ${d_function(
//     1,
//     2,
//     3,
//   )}");

//   //------------------- CÁCH 3 : SAU NÀY CHỈ DÙNG CÁCH NÀY--------------- named parameter
//   // CÁi này đòi tên của tham số : 2 cách trên vì không có tên nên nó phải dựa vào thứ tự

//   int e_function({int a = 1, int b = 3}) {
//     return a + b;
//   }

//   print("named param ${e_function(a: 3, b: 4)}");
//   print("named param ${e_function(b: 5, a: 6)}");

//   //MIX

//   int f_function(int a, {int b = 2, int c = 4}) {
//     return a + b + c;
//   }

//   print('f_function ${f_function(3, b: 3, c: 4)}');

//   //----------funtion----------

//   // định dạng nameFunction () // Nhận tham số vào
//   // {
//   // Khối lệnh thực thi
//   // }

//   // Các dạng function Không có tham số
//   int nameFuntion() {
//     return 10;
//   }

//   String function1() {
//     return "Flutter";
//   }

//   // void là function không trả về giá trị gì
//   void functionVoid() {
//     print(" Xin chào ");
//   }

//   void functionVoid_2() {
//     print(" Đéo chào ");
//   }

//   // true ? functionVoid() : functionVoid_2();     // PHẢI KHAI BÁO TRƯỚC KHI SỬ DỤNG
//   // false ? functionVoid() : functionVoid_2();     // CALL HÀM THÌ DÙNG function()  : vậy là call hàm là cho nó chạy

//   5 > 2 ? functionVoid() : functionVoid_2();

//   // function có tham số

//   // Tham số bắt buộc phải có : không truyền vào thì lỗi
//   int b_funtion(int a, int b, String c) {
//     print("Khối lệnh thực thi của hàm $c");
//     return a + b;
//   }

//   b_funtion(100, 50, "String argument"); // Khi đủ tham số thì sẽ chạy được
//   //  b_funtion(100, 50)  // Nếu không đủ tham số thì lỗi

// // Tham số mặc định cho trước: nếu không truyền vào thì lấy giá trị mặc định
//   //position parameter : 1 kiểu truyền tham số cho hàm với default value : giá trị mặc định :
//   // [] : để có thể truyền tham số mặc định cho hàm
//   int c_function([int a = 10, int b = 20]) {
//     print('default param $a');
//     print('default param $b');
//     return a + b;
//   }

//   c_function(30, 40);
//   // c_function();  // Nếu không truyền thì nó sẽ nhận giá trị mặc định

// }

void main(List<String> args) {
  a_function(3, 5);
}

int a_function(int a, int b) {
  print("ĐÂy là khối hàm ");
  return a + b;
}

int b_function(int a, int b) =>  a + b;


//CÁCh viết khác mà ngắn gọn : arrow function , one line function 
// Nếu mà function đó return ra cái gì thì viết luôn sau dấy =>


// Có dấu {}  thì có thể thực thi khôi lệnh 
// dùng => thì chỉ được phép return giá trị thôi 
 