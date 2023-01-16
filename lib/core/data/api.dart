import 'env.dart';

class Api {
  static const _baseURL = "https://api.themoviedb.org/3";
  String imageBaseURL = "https://image.tmdb.org/t/p";

  String getMovieDiscover = "$_baseURL/discover/movie?api_key=${Env.apiKey}&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1";
}
