
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmovie/core/models/movie/movie_model.dart';
import 'package:mmovie/core/services/http/movie_http.dart';

import '../data/base_api.dart';
import '../models/state/object_state_model.dart';

final movieService = Provider<MovieHttp>((ref) => MovieHttp(BaseAPI()));

final movieProvider = StateNotifierProvider.autoDispose<MovieNotifier, ObjectStateModel<MovieModel>>((ref) => MovieNotifier(ref.watch(movieService)));

class MovieNotifier extends StateNotifier<ObjectStateModel<MovieModel>> {
  MovieHttp movieService;
  MovieNotifier(this.movieService) : super(ObjectStateModel<MovieModel>()) {
    getMovie();
  }

  Future<void> getMovie() async {
    state = state.copyWith(isLoading: true, item: null);
    await Future.delayed(const Duration(seconds: 3));
    try {
      final result = await movieService.getMovieDiscover();
      state = state.copyWith(item: result, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
    }
  }
}
