import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String backdropPath;
  final String originalTitle;
  final String overview;
  final List<int> genreIds;
  final double voteAverage;
  final String releaseDate;
  final int voteCount;

  const Movie(
      {required this.id,
      required this.backdropPath,
      required this.originalTitle,
      required this.overview,
      required this.genreIds,
      required this.voteAverage,
      required this.releaseDate,
      required this.voteCount});

  @override
  List<Object> get props {
    return [
      id,
      backdropPath,
      originalTitle,
      overview,
      genreIds,
      voteAverage,
      voteCount,
      releaseDate,
    ];
  }
}
