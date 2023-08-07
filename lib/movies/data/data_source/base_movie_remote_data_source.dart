import 'package:movies_app/movies/data/models/movie_details_model.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';
import 'package:movies_app/movies/data/models/recommendation_model.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_recommendations.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNewPlayingMovie();
  Future<List<MovieModel>> getPopularMovie();
  Future<List<MovieModel>> getTopRatedMovie();
  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameter parameter);
  Future<List<RecommendationModel>> getMovieRecommendation(
      RecommendationParameter parameter);
}
