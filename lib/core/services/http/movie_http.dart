import 'package:mmovie/core/models/movie/movie_model.dart';
import 'package:mmovie/core/services/http/movie_repository.dart';

import '../../data/base_api.dart';
import '../../models/api/api_response.dart';

class MovieHttp implements MovieRepository {
  BaseAPI api;
  MovieHttp(this.api);

  @override
  Future<MovieModel> getMovieDiscover() async {
    APIResponse response = await api.get(
      api.endpoint.getMovieDiscover,
      useToken: true,
    );

    if (response.status! > 300) {
      throw response;
    }
    return MovieModel.fromJson(response.data);
  }
}
