import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';
import 'package:movies_app/movies/domain/repository/base_movie_repository.dart';

class GetMovieDetailsUseCase
    extends BaseUseCase<MovieDetails, MovieDetailsParameter> {
  final BaseMovieRepository baseMovieRepository;

  GetMovieDetailsUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, MovieDetails>> call(
      MovieDetailsParameter parameter) async {
    return await baseMovieRepository.getMovieDetails(parameter);
  }
}

class MovieDetailsParameter extends Equatable {
  final int movieId;

  const MovieDetailsParameter({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
