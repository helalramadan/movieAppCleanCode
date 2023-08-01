import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/services/services_locator.dart';
import 'package:movies_app/movies/persentation/component/head_line_text.dart';
import 'package:movies_app/movies/persentation/component/now_playing_component.dart';
import 'package:movies_app/movies/persentation/component/popular_component.dart';
import 'package:movies_app/movies/persentation/component/top_rated_component.dart';
import 'package:movies_app/movies/persentation/controller/movie_bloc.dart';
import 'package:movies_app/movies/persentation/controller/movie_event.dart';

class MainMoviesScreen extends StatelessWidget {
  const MainMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MovieBloc>()
        ..add(GetNowPlayingMovieEvent())
        ..add(GetPopularMovieEvent())
        ..add(GetTopRatedMovieEvent()),
      child: Scaffold(
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NowPlayingComponent(),
              HeadLineText(onTap: () {}, titel: "Popular"),
              const PopularComponent(),
              HeadLineText(onTap: () {}, titel: "Top Rated"),
              const TopRatedComponent(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
