void main(List<String> args) {
  //   // List là mảng []

//   //Khi khai báo phải khai báo phần tử bên trong là kiểu giá trị gì

  List<int> numList = [3, 2, 4, 6, 5, 1, 2, 2, 2, 2, 5, 6];
  print("List number $numList");
  print(numList.toString());

//   List<double> doubleList = [1, 2, 3, 4.6];

//   // Cách property của List
//   List<String> nameList; // Khai báo

//   nameList = ["a", 'b', "c"]; // gán giá trị sau
//   print("List nameList $nameList");

//   // THÊM 1 PHẦN TỬ VÀO MẢNG
//   nameList.add("d");
//   print("List after add $nameList");

//   // LẤY RA 1 PHẦN TỬ CỦA MẢNG
//   print("phần tử 0 của mảng ${nameList[0]}");
//   print("phần tử 1 của mảng ${nameList[1]}");

//   // LẤY RA CHIỀU DÀI MẢNG
//   print("nameList length ${nameList.length}");

//   //LỌC QUA TẤT CẢ CÁC PHẦN TỬ TRONG MẢNG
//   // cách 1:
//   for (var i = 0; i < nameList.length; i++) {
//     print("element of nameList ${nameList[i]}");
//   }

//   //cách 2 :
//   nameList.forEach((element) {
//     print("element of nameList by forEach ${element}");
//   });

//   //SẮP XẾP MẢNG
//   //------- Sắp xếp mảng List  : Dạng số
//   numList.sort((a, b) {
//     return (a.compareTo(b)); // Sắp xếp tăng dần // Nếu mà false: thì sẽ đổi thứ tự a và b // nếu return true thì không đổi thứ tự a và b
//   });
//   print("sort tăng dần numlist $numList");
//   numList.sort((a, b) {
//     return (b.compareTo(a)); // Sắp xếp tăng dần // Nếu mà false: thì sẽ đổi thứ tự a và b // nếu return true thì không đổi thứ tự a và b
//   });

//   print("sort giảm dần  numlist $numList");

//   //------- SẮP XẾP TĂNG GIẢM DẦN TRONG MẢNG  : Dạng String
//   nameList.sort((a, b) {
//     return (a.compareTo(b)); // Sắp xếp tăng dần // Nếu mà false: thì sẽ đổi thứ tự a và b // nếu return true thì không đổi thứ tự a và b
//   });
//   print("sort tăng dần nameList $nameList");

//   nameList.sort((a, b) {
//     return (b.compareTo(a)); // Sắp xếp tăng dần // Nếu mà false: thì sẽ đổi thứ tự a và b // nếu return true thì không đổi thứ tự a và b
//   });
//   print("sort giảm dần  nameList $nameList");

// //Sort : Là 1 hàm sort() và tham số của nó là 1 hàm khác
// // Khi sort thì mảng gốc bị thay đổi !!!!!!!!!!!!!!

// //  TÌM KIẾM PHẦN TỬ TRONG MẢNG

//   List<int> takeList = numList.where((e) {
//     return e > 2; // Return ra 1 giá trị true/ false  ==> Nếu là true thì trả về giá trị đó
//   }).toList(); // toList : là đến bắn List vào biến được hứng

//   print('where List takeList $takeList');
//   print('where List numList $numList');

//   //Khi tìm kiếm mảng gốc không thay đổi !!!!!!!!!!

//   //TƯ DUY THÔNG THƯỜNG KHI VIẾT HÀM NGHĨ RETURN SẼ TRẢ VỀ 1 GIÁ TRỊ GÌ ĐẤY
//   // int a_function(int a, int b) {
//   //   return a + b;
//   // }

//   // NHƯNG HÀM sort . where - cái return chỉ nói là true/false phẩn tử đó có được thoả mãn hay không


// KHÔNG DÙNG  : Rất khó kiểm Soát
  List<dynamic> a_list = [
    1,
    2,
    3,
    3.3,
    "abc",
    ["a", "abc"]
  ];



// print(a_list.toString());
}