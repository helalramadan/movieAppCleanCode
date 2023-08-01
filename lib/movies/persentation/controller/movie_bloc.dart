import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_populer_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movies_app/movies/persentation/controller/movie_event.dart';
import 'package:movies_app/movies/persentation/controller/movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  MovieBloc(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUseCase,
      this.getTopRatedMoviesUseCase)
      : super(const MovieState()) {
    on<GetNowPlayingMovieEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase(const NoParameter());
      // print(result);
      result.fold((l) {
        return emit(state.copyWith(
            nowPlayingMessage: l.message, nowPlayingState: RequestState.error));
      }, (r) {
        return emit(state.copyWith(
            nowPlayingMovie: r, nowPlayingState: RequestState.loaded));
      });
    });
    on<GetPopularMovieEvent>((event, emit) async {
      final result = await getPopularMoviesUseCase(const NoParameter());
      // print('From Popular Movie =>  $result');
      result.fold((l) {
        return emit(state.copyWith(
            popularMessage: l.message, popularMovieState: RequestState.error));
      }, (r) {
        return emit(state.copyWith(
            popularMovie: r, popularMovieState: RequestState.loaded));
      });
    });
    on<GetTopRatedMovieEvent>((event, emit) async {
      final result = await getTopRatedMoviesUseCase(const NoParameter());
      // print('From Top Rated Movie =>  $result');
      result.fold((l) {
        return emit(state.copyWith(
            topRatedMessage: l.message,
            topRatedMovieState: RequestState.error));
      }, (r) {
        return emit(state.copyWith(
            topRatedMovie: r, topRatedMovieState: RequestState.loaded));
      });
    });
  }
}
