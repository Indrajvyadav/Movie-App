import 'package:example2_app/details_page/details_screen.dart';
import 'package:example2_app/model/movie_model.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailsScreen(
                  movie: movie,
                );
              },
            ),
          );
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(movie.poster),
            ),
          ),
        ),
      ),
    );
  }
}

class MovieTitle extends StatelessWidget {
  const MovieTitle({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 450, left: 125),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text(
            movie.title,
            style: const TextStyle(
              color: Color.fromARGB(255, 214, 212, 212),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class MovieRating extends StatelessWidget {
  const MovieRating({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 485, left: 150),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text(
            '⭐ ${movie.rating}',
            style: const TextStyle(
              color: Color.fromARGB(255, 214, 212, 212),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
