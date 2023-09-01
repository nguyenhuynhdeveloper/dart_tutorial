
import 'dart:core';

import 'package:dart_tutorial/tutorial/function/functions.dart';
import 'package:dart_tutorial/tutorial/class/models/bicycle.dart';
import 'package:dart_tutorial/tutorial/class/models/car.dart';
import 'package:dart_tutorial/tutorial/class/repositories/movie_repository.dart';

 void main(List<String> args) {
  //---------------list of string

  // sử dụng var
  // List<String> carBrands = ["Bentley", "Buick", "BMW", "Audi", "Fiat", "Mercedes-Benz"];
  //carBrands = ["Toyota", "Honda"]; // được phép re-assign

  // sử dụng final
  final List<String> carBrands = ["Bentley", "Buick", "BMW", "Audi", "Fiat", "Mercedes-Benz"];
  //carBrands = ["Toyota", "Honda"]; // cannot be re-assigned if "final"
  //carBrands[0] = "Honda"; //ok, if carBrands is "final"

  // sử dụng const
  // const List<String> carBrands = ["Bentley", "Buick", "BMW", "Audi", "Fiat", "Mercedes-Benz"];
  //carBrands = ["Toyota", "Honda"]; // cannot be re-assigned if "const"
  //carBrands[0] = "Honda"; //Failed, if carBrands is "const" // const Không cho thay đổi giá trị - cũng k cho sửa - Không cho làm gì hết

  print(carBrands);
  print('There are ${carBrands.length} brand names');

  // Lặp qua từng phần tử của mảng

  // Sử dụng for
  //iterate through carBrands
  for (var i = 0; i < carBrands.length; i++) {
    String carBrand = carBrands[i];
    print(carBrand);
  }
  print('Iterate using forEach');
  // ignore: avoid_function_literals_in_foreach_calls : Khuyến cáo sử dụng for - chứ không nên sử dụng forEach

// Sử dụng forEach
  carBrands.forEach((carBrand) {
    print(carBrand);
  });

  // shuffle() : tráo các phần tử trong List
  // Thay đổi ở ngay List gốc
  carBrands.shuffle();
  print('After shuffled');

  // asMap() : chuyển List -> Map (Object)
  carBrands.asMap().forEach((index, carBrand) {
    print('index: $index, carBrand: $carBrand');
  });

  // add() : chèn thêm 1 phần tử vào cuối List
  // Chèn vào ngay List gốc
  // List gốc bị thay đổi
  //insert more item
  carBrands.add('Mazda');
  print(carBrands);
  print('Add item to the first');

  // insert(5, "abc") : Chèn 1 phần tử bất kỳ vào List
  // List gốc bị thay đổi

  carBrands.insert(0, 'Cadillac');
  print(carBrands);

  // Spread Operator
  // Clone  1 List bằng cách destructuring : 2 List giống hệt nhau nhưng ở 2 ô nhớ khác nhau
  List<String> clonedCarBrands = [...carBrands];
  clonedCarBrands[0] = 'Honda';
  print('carBrands = $carBrands');
  print('clonedCarBrands = $clonedCarBrands');

  // sort(()=>{}) // Sắp xếp các phần tử trong List
  // return >0 : Đổi thứ tự sắp xếp
  // return <0 : Giữ nguyên thứ tự sắp xếp

  print('after sort ascending');
  clonedCarBrands.sort((a, b) => a.compareTo(b));
  print('clonedCarBrands = $clonedCarBrands');

  print('after sort descending');
  clonedCarBrands.sort((a, b) => b.compareTo(a));
  print('clonedCarBrands = $clonedCarBrands');

}