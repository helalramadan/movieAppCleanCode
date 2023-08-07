import 'package:movies_app/movies/data/models/genres_model.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required backdropPath,
    required title,
    required voteAverage,
    required voteCount,
    required overview,
    required id,
    required genres,
    required releaseDate,
  }) : super(
          backdropPath: backdropPath,
          title: title,
          voteAverage: voteAverage,
          voteCount: voteCount,
          overview: overview,
          id: id,
          genres: genres,
          releaseDate: releaseDate,
        );

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      backdropPath: json['backdrop_path'],
      title: json['title'],
      id: json['id'],
      voteAverage: (json['vote_average']).toDouble(),
      voteCount: (json['vote_count']).toInt(),
      overview: json['overview'],
      releaseDate: json['release_date'],
      genres: List<GenresModel>.from(
          json['genres'].map((e) => GenresModel.fromJson(e))),
    );
  }
}
