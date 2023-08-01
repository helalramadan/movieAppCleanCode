import 'package:dartz/dartz.dart';
import 'package:movies_app/error/failure.dart';
import 'package:movies_app/movies/data/models/movie_details_model.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';
import 'package:movies_app/movies/data/models/recommendation_model.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_recommendations.dart';

abstract class BaseMovieRemoteDataSource {
  Future<Either<Failure, List<MovieModel>>> getNewPlayingMovie();
  Future<Either<Failure, List<MovieModel>>> getPopularMovie();
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovie();
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(
      MovieDetailsParameter parameter);
  Future<Either<Failure, List<RecommendationModel>>> getMovieRecommendation(
      RecommendationParameter parameter);
}
