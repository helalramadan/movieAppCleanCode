import 'package:equatable/equatable.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();

  @override
  List<Object> get props {
    return [];
  }
}

class GetNowPlayingMovieEvent extends MovieEvent {}

class GetPopularMovieEvent extends MovieEvent {}

class GetTopRatedMovieEvent extends MovieEvent {}
