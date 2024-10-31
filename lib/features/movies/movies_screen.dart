import 'package:flutter/material.dart';
import 'package:messy_cinema/features/movies/big_card_caroussel.dart';
import 'package:messy_cinema/features/movies/small_card_caroussel.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.local_movies_rounded),
        title: const Text("Batch #7 Kino"),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigCardCaroussel(),
          SmallCardCaroussel(),
        ],
      ),
    );
  }
}
