import 'package:movies_app/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.backdropPath,
      required super.originalTitle,
      required super.overview,
      required super.genreIds,
      required super.voteAverage,
      required super.releaseDate,
      required super.voteCount});
  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'].toInt(),
      backdropPath: json['backdrop_path'].toString(),
      originalTitle: json['original_title'].toString(),
      overview: json['overview'].toString(),
      genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      voteAverage: json['vote_average'].toDouble(),
      releaseDate: json['release_date'].toString(),
      voteCount: json['vote_count'].toInt(),
    );
  }
}
