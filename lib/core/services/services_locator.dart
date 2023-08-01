import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/data_source/base_movie_remote_data_source.dart';
import 'package:movies_app/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movie_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_recommendations.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_populer_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movies_app/movies/persentation/controller/movie_bloc.dart';
import 'package:movies_app/movies/persentation/controller/movie_details_bloc.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  void init() {
    /// movie bloc
    getIt.registerLazySingleton(() => MovieBloc(getIt(), getIt(), getIt()));
    getIt.registerLazySingleton(() => MovieDetailsBloc(getIt(), getIt()));

    ///   USE CASE

    getIt.registerLazySingleton(
        () => GetNowPlayingMoviesUseCase(baseMovieRepository: getIt()));
    getIt.registerLazySingleton(() => GetPopularMoviesUseCase(getIt()));
    getIt.registerLazySingleton(() => GetTopRatedMoviesUseCase(getIt()));
    getIt.registerLazySingleton(() => GetMovieDetailsUseCase(getIt()));
    getIt.registerLazySingleton(() => GetMoiveRecommendationUseCase(getIt()));

    ///   REPOSITORY
    getIt.registerLazySingleton<BaseMovieRepository>(
        () => MovieRepository(getIt()));

    ///   DATA SOURCE
    getIt.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
