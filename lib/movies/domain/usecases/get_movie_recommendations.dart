import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/error/failure.dart';
import 'package:movies_app/movies/domain/entities/recommendations.dart';
import 'package:movies_app/movies/domain/repository/base_movie_repository.dart';

class GetMoiveRecommendationUseCase
    extends BaseUseCase<List<Recommendations>, RecommendationParameter> {
  final BaseMovieRepository baseMovieRepository;

  GetMoiveRecommendationUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Recommendations>>> call(
      RecommendationParameter parameter) async {
    return await baseMovieRepository.getMovieRecommendations(parameter);
  }
}

class RecommendationParameter extends Equatable {
  final int movieId;

  const RecommendationParameter({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
