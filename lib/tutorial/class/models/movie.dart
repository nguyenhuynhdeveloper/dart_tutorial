// import 'dart:html';

class Movie {
  final int id;
  final String title;
  final int releaseYear;

  //constructor
  Movie({required this.id, required this.title, required this.releaseYear});

  // factory là 1 kiểu constructor 
  // factory nghĩa là giá trị trả về của factory là 1 đối tượng 

  // Tạo 1 hàm để biến đối từ json -> key: value (object)

  // convert map (json object) to Movie object ?  ==> Mục đích biến Map json thành đối tượng Movie : Tạo ra 1 đối tượng movie

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: int.parse(json['id']),
      title: json['title'],
      releaseYear: int.parse(json['releaseYear']),
    );
  }

  @override
  String toString() => 'id: $id, tittle:$title, releaseYear: $releaseYear';
}
