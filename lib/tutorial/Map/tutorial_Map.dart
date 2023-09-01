void main(List<String> args) {
//   // KIỂU DỮ LIỆU Map : nó sẽ có dạng key : value

  Map<String, String> nameMap;
  nameMap = {
    "ho": "Flutter",
    "ten": "Dart",
    "ten1": "Dart1",
    "ten2": "Dart2",
    "ten3": "Dart3",
  };

//CHUYỂN MAP THÀNH STRING
  print(nameMap.toString());

  //LẤY GIÁ TRỊ CỦA 1 Key TRONG Map

  var value1 = nameMap['ho'];

  print('Map $value1');
  print('Map ${nameMap['ho']}');

  // MUỐN THAY ĐỔI GIÁ TRỊ CỦA 1 Key

  nameMap['ten'] = "Android";
  print("Map ${nameMap}");

  nameMap.length;
  print('nameMap.length ${nameMap.length}');

// forEach() : Lặp qua từng phần tử của Map 
  nameMap.forEach((key, value) {
    print("element of nameMap $key : $value");
  });

// Cách khai báo 1 Map nhanh gọn - khi chưa biết rõ kiểu giá trị rõ ràng của Map
  var map = Map(); // Khai báo

  // thêm phần tử vào Map
  map["Trang Web"] = "baoflutter.com";
  map["Nội dung"] = "Báo Flutter";

  print("In ra Map");
  print(map);

  print("In ra các key của map");
  print(map.keys);

  print("In ra các value của map");
  print(map.values);

  print("In ra độ dài của map");
  print(map.length);

  print("Map có rỗng không?");
  print(map.isEmpty);

  var map2 = new Map();

  // addAll(name_Map)  : Lấy hết tất cả giá trị của 1 map copy vào 1 map khác 
  map2.addAll(map);
  print("In ra Map 2");
  print(map2);

// remove(name_Key) : Xoá 1 trường key: value trong Map 
  map2.remove("Nội dung");
  print("In ra Map 2 sau khi remove key Nội dung");
  print(map2);

// addEntries :  THÊM 1 phần tử key: value cho Map

  map2.addEntries({"c": 3}.entries);
  map2['d'] = 4;

  // print(map2);

  //MAP HAY DÙNG NHẤT -- Nhận dữ liệu từ API
  Map<String, dynamic> a_map = {
    "numcurrency": "a Value",
    "b": 4,
    "c": 4.5,
    "d": {"abc": 3},
    "e": [1, 2, 3, 4, 5, 'abc'],
    "function ": () {
      print('Map có thể nhận hàm');
    }
  };
  a_map["numcurrency"] = "100000";


  //------Map  : dữ liệu kiểu Map dạng {key: value, key1: value1 }
  //key-value objects
  const Map<String, Object> user = {'name': 'Hoang', 'email': 'sunlight4d@gmail.com', 'age': 18};
  //user['name'] = 'Henry';//you can change property of a "final" object
  //but cannot do that with "const"
  print(user);
}