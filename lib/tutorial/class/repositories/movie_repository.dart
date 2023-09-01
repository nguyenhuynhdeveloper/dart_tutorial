// import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import '../models/movie.dart';

const urlGetMovies = 'https://reactnative.dev/movie.json';


// Hàm async : bât đồng bộ , trong quá trình thực hiện - các hành động khác vẫn phải làm 
// thì nó là Future<T>  : Trong JS nó sẽ là Promise
// 
Future<List<Movie>> fetchMovies() async {
   List<Movie> movies = [];

  try {
    final response = await http.get(Uri.parse(urlGetMovies));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);   // jsonDecode : đề biến dạng string Json về dạng {key: value} : tác dụng như JSON.parse(response.body)
     movies = (json['movies'] as List).map((item) => Movie.fromJson(item)).toList(); 
    }
    return movies;
  } on Exception catch (e) {
    throw Exception("Failed to fetch Films: ${e.toString()}");
  }
}
