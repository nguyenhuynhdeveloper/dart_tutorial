// Ngôn ngữ lập trình Dart cho người mới bắt đầu - 1.5 giờ
//https://www.youtube.com/watch?v=RbjOY6Ez-AU&list=PLWBrqglnjNl3DzS2RHds5KlanGqQ1uLNQ&index=44&t=712s

//  void main(List<String> args) {
//   print("xin chao");
// }

import 'dart:core';

import 'package:dart_tutorial/tutorial/function/functions.dart';
import 'package:dart_tutorial/tutorial/class/models/bicycle.dart';
import 'package:dart_tutorial/tutorial/class/models/car.dart';
import 'package:dart_tutorial/tutorial/class/repositories/movie_repository.dart';

void main(List<String> arguments) async {

// 2 : hành động sẽ chạy đồng thời : 2 hành động chạy song song không ai đợi ai 
//   print('Begin task1');
//   fetchMovies().then((movies) {
//     print('finished Task1');
//     print('result1 = $movies');
//   });
//   print('Begin task2');
//   fetchMovies().then((movies) {
//     print('finished Task2');
//     print('result2 = $movies');
//   });

// // Cách hành động đồng bộ cứ chạy trước -- bất đồng bộ chạy xong thì trả ra 
// // Begin task1
// // Begin task2
// // finished Task1
// // result1 = []
// // finished Task2
// // result2 = []
  

  // // Hành động 2 phải đợi hành động 1 : await trước chạy xong await sau mới được chạy các dòng dưới 
  print('Begin task1');
  var result1 = await fetchMovies(); // Hành động 1 được chạy trước // Chặn luôn hành động đồng bộ phía dưới 
  print('result1 = $result1');

  print('Begin task2');
  var result2 = await fetchMovies(); // Hành động 2 phải đợi xong mới được chạy
  print('result2 = $result2');

// Begin task1
// result1 = []
// Begin task2
// result2 = []
}
