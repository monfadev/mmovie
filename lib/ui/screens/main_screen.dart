import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/data/api.dart';
import '../../core/viewmodels/movie_provider.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieRef = ref.watch(movieProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("Movie Discovery")),
      body: (movieRef.isLoading)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(20),
              itemCount: movieRef.item?.results?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.only(),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: movieRef.item?.results?[index].backdropPath != null
                        ? Image.network("${Api().imageBaseURL}/w780${movieRef.item!.results![index].backdropPath}")
                        : Image.asset("assets/images/no-image.png"),
                  ),
                  title: Text(movieRef.item?.results?[index].title ?? ""),
                );
              },
              separatorBuilder: (context, _) {
                return const SizedBox(height: 20);
              },
            ),
    );
  }
}
