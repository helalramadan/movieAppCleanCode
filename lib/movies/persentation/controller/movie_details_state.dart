part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  final MovieDetails? movieDetails;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;
  final List<Recommendations> movieRecommendation;
  final RequestState recommendationState;
  final String movieRecommendationMessage;

  const MovieDetailsState(
      {this.movieDetails,
      this.movieDetailsState = RequestState.loading,
      this.movieDetailsMessage = "",
      this.movieRecommendation = const [],
      this.recommendationState = RequestState.loading,
      this.movieRecommendationMessage = ""});

  MovieDetailsState copyWith({
    MovieDetails? movieDetails,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,
    List<Recommendations>? movieRecommendation,
    RequestState? recommendationState,
    String? movieRecommendationMessage,
  }) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      movieRecommendation: movieRecommendation ?? this.movieRecommendation,
      recommendationState: recommendationState ?? this.recommendationState,
      movieRecommendationMessage:
          movieRecommendationMessage ?? this.movieRecommendationMessage,
    );
  }

  @override
  List<Object?> get props => [
        movieDetails,
        movieDetailsState,
        movieDetailsMessage,
        movieRecommendation,
        recommendationState,
        movieRecommendationMessage,
      ];
}
