import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/core/utils/constant.dart';
import 'package:movies_app/error/exceptions.dart';
import 'package:movies_app/error/failure.dart';
import 'package:movies_app/movies/data/models/movie_details_model.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';
import 'package:movies_app/movies/data/models/recommendation_model.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_recommendations.dart';

import 'base_movie_remote_data_source.dart';

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<Either<Failure, List<MovieModel>>> getNewPlayingMovie() async {
    var response = await Dio().get(Constant.nowPlayingMoiesPath);
    if (response.statusCode == 200) {
      return Right(List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e))
          .toList()));
    } else {
      throw ServerExceptions(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getPopularMovie() async {
    var response = await Dio().get(Constant.popularMoiesPath);
    if (response.statusCode == 200) {
      return Right(List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e))
          .toList()));
    } else {
      throw ServerExceptions(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovie() async {
    Dio dio = Dio();

    var response = await dio.get(
      Constant.topRatedMoiesPath,
    );
    if (response.statusCode == 200) {
      return Right(List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e))
          .toList()));
    } else {
      throw ServerExceptions(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(
      MovieDetailsParameter parameter) async {
    var response = await Dio().get(Constant.moviesDetailsPath(parameter));
    if (response.statusCode == 200) {
      print(response);

      return Right(MovieDetailsModel.fromJson(response.data));
    } else {
      throw ServerExceptions(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<Either<Failure, List<RecommendationModel>>> getMovieRecommendation(
      RecommendationParameter parameter) async {
    var response =
        await Dio().get(Constant.moviesRecommendationsPath(parameter));
    if (response.statusCode == 200) {
      return Right(List<RecommendationModel>.from(
          (response.data['results'] as List)
              .map((e) => RecommendationModel.fromJson(e))
              .toList()));
    } else {
      throw ServerExceptions(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
