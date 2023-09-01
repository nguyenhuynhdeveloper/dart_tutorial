
import 'dart:core';

import 'package:dart_tutorial/tutorial/function/functions.dart';
import 'package:dart_tutorial/tutorial/class/models/bicycle.dart';
import 'package:dart_tutorial/tutorial/class/models/car.dart';
import 'package:dart_tutorial/tutorial/class/repositories/movie_repository.dart';

void main ()
{
// default parameters
  print('2 add 3 is: ${add(2, 3)}');
  // position parameters

  print('demo position param ${minus(5, 2)}');

  //named parameters
  print('5 times 6 is: ${multiply(y: 6, x: 5)}'); //order is not important
  print(multiply(x: 23));

  sayHello('Hoang');
  sayHello();
  String urlHome = getUrl('SERVER_X', port: 3002);
  print('today is ${getDateTimeString(day: 1, month: 7, year: 2022)}');
  doSomeTasks(
      param1: 1,
      param2: 2,
      completion: (int result) {
        print('The result is: $result');
      });

}

