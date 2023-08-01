import 'package:equatable/equatable.dart';
import 'package:movies_app/movies/domain/entities/movie_genres.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final String title;
  final String releaseDate;
  final double voteAverage;
  final int voteCount;
  final String overView;
  final int id;
  final List<Genres> genres;

  const MovieDetails({
    required this.backdropPath,
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
    required this.voteCount,
    required this.overView,
    required this.id,
    required this.genres,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        backdropPath,
        title,
        voteCount,
        voteAverage,
        overView,
        id,
        genres,
        releaseDate
      ];
}
