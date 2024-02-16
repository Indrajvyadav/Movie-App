import 'package:example2_app/home_page/movie_card.dart';
import 'package:example2_app/model/movie_model.dart';
import 'package:flutter/material.dart';

class Type2Category extends StatelessWidget {
  const Type2Category({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 10,
        right: 10,
        child: Card(
          color: const Color.fromARGB(255, 164, 155, 68).withOpacity(0.4),
          child: Container(
            height: 400,
            width: 303,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ),
      Positioned(
        top: 20,
        left: 25,
        child: Card(
          color: const Color.fromARGB(0, 129, 121, 53),
          child: Container(
            height: 408,
            width: 303,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: MovieCard(
              movie: movies[index],
            ),
          ),
        ),
      ),
      Column(children: [
        MovieTitle(
          movie: movies[index],
        ),
      ]),
      Column(
        children: [
          MovieRating(
            movie: movies[index],
          ),
        ],
      ),
    ]);
  }
}
