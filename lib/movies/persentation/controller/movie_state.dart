import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

class MovieState extends Equatable {
  final List<Movie> nowPlayingMovie;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;
  final List<Movie> popularMovie;
  final RequestState popularMovieState;
  final String popularMessage;
  final List<Movie> topRatedMovie;
  final RequestState topRatedMovieState;
  final String topRatedMessage;

  const MovieState({
    this.nowPlayingMovie = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = '',
    this.popularMovie = const [],
    this.popularMovieState = RequestState.loading,
    this.popularMessage = '',
    this.topRatedMovie = const [],
    this.topRatedMovieState = RequestState.loading,
    this.topRatedMessage = '',
  });
  MovieState copyWith({
    List<Movie>? nowPlayingMovie,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movie>? popularMovie,
    RequestState? popularMovieState,
    String? popularMessage,
    List<Movie>? topRatedMovie,
    RequestState? topRatedMovieState,
    String? topRatedMessage,
  }) {
    return MovieState(
      nowPlayingMovie: nowPlayingMovie ?? this.nowPlayingMovie,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMovie: popularMovie ?? this.popularMovie,
      popularMovieState: popularMovieState ?? this.popularMovieState,
      popularMessage: popularMessage ?? this.popularMessage,
      topRatedMovie: topRatedMovie ?? this.topRatedMovie,
      topRatedMovieState: topRatedMovieState ?? this.topRatedMovieState,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        nowPlayingMovie,
        nowPlayingState,
        nowPlayingMessage,
        popularMovie,
        popularMovieState,
        popularMessage,
        topRatedMovie,
        topRatedMovieState,
        topRatedMessage
      ];
}
