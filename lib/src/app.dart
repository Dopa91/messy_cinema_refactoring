import 'package:flutter/material.dart';
import 'package:messy_cinema/src/features/movies/presentation/movies_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
      ),
      home: const MoviesScreen(),
    );
  }
}
