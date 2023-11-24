import 'dart:convert';
import 'package:movies_app/models/movie.dart';

class Person {
  int id;
  String name;
  int gender;
  String profilePath;
  String knownForDepartment;
  double popularity;
  List<Movie> knownFor;

  Person({
    required this.id,
    required this.name,
    required this.gender,
    required this.profilePath,
    required this.knownForDepartment,
    required this.popularity,
    required this.knownFor,
  });

  List<Movie> getMoviesWithPosters() {
    return knownFor.where((movie) => movie.posterPath.isNotEmpty).toList();
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      id: map['id'] as int,
      name: map['name'] ?? '',
      gender: map['gender'] ?? 0, // Assuming gender is an int
      profilePath: map['profile_path'] ?? '',
      knownForDepartment: map['known_for_department'] ?? '',
      popularity: map['popularity']?.toDouble() ?? 0.0,
      knownFor: (map['known_for'] as List<dynamic>)
          .map((knownForItem) => Movie.fromMap(knownForItem))
          .toList(),
    );
  }

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source));
}
