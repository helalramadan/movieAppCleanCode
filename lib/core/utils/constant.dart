// https://api.themoviedb.org/3/movie/now_playing?api_key=3295d355fceb97dfe70d321ff04ca4d0

import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_recommendations.dart';

class Constant {
  static const String baseUrl = 'https://api.themoviedb.org/3';

  static const String apiKey = '3295d355fceb97dfe70d321ff04ca4d0';

  static const String nowPlayingMoiesPath =
      '${Constant.baseUrl}/movie/now_playing?api_key=${Constant.apiKey}';

  static const String popularMoiesPath =
      '${Constant.baseUrl}/movie/popular?api_key=${Constant.apiKey}';

  static const String topRatedMoiesPath =
      '${Constant.baseUrl}/movie/top_rated?api_key=${Constant.apiKey}';

  static String moviesDetailsPath(MovieDetailsParameter parameter) =>
      '${Constant.baseUrl}/movie/$parameter?api_key=${Constant.apiKey}';

  static String moviesRecommendationsPath(RecommendationParameter parameter) =>
      '${Constant.baseUrl}/movie/${parameter}/recommendations?api_key=${Constant.apiKey}';

  static const String accessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlOWYyNDQzN2VmYTE1YzUzZDc5MGQxYjA4MWRmM2MxMCIsInN1YiI6IjYzOGExOWMzMWI3MjJjMDBhYjdlMmE0OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Bd58k2LxCJlSNNRvaFWiaG-UTbp8AhJsOSAv2nttO8c';

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) {
    return '$baseImageUrl$path';
  }
}
