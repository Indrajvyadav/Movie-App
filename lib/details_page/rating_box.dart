import 'package:example2_app/details_page/next_details.dart';
import 'package:example2_app/model/movie_model.dart';
import 'package:flutter/material.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.4 - 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(movie.backdrop),
            ),
          ),
        ),
        NextDetails(
          movie: movie,
        ),
        Positioned(
          left: 42,
          top: 250,
          child: Container(
            height: 100,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                topLeft: Radius.circular(
                  50,
                ),
              ),
              color: const Color.fromARGB(255, 75, 71, 71),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  blurRadius: 30,
                  color:
                      const Color.fromARGB(146, 232, 219, 102).withOpacity(0.3),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 260,
          left: 100,
          child: Container(
            height: 33,
            width: 33,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/star_gold.png',
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 294,
          left: 97,
          child: Container(
            child: RichText(
              text: TextSpan(
                  style: const TextStyle(
                    color: Color.fromARGB(255, 214, 212, 212),
                  ),
                  children: [
                    TextSpan(
                      text: '${movie.rating.toString()}/',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 214, 212, 212),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: '10\n',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextSpan(text: '${movie.numOfRatings}')
                  ]),
            ),
          ),
        ),
        Positioned(
          top: 261,
          left: 215,
          child: Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              image: DecorationImage(
                invertColors: true,
                image: AssetImage(
                  'assets/images/B_W_star.png',
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 290,
          left: 190,
          child: Container(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Rate This',
                style: TextStyle(
                    color: Color.fromARGB(146, 232, 219, 102),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ),
        Positioned(
          top: 267,
          left: 330,
          child: Container(
            height: 22,
            width: 22,
            padding: const EdgeInsets.only(left: 3),
            color: const Color.fromARGB(169, 94, 191, 97),
            child: Text(
              '${movie.metascoreRatings}',
              style: const TextStyle(
                  color: Color.fromARGB(255, 214, 212, 212),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          top: 292,
          left: 290,
          child: Container(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Color.fromARGB(255, 214, 212, 212),
                ),
                children: [
                  const TextSpan(
                    text: '  Metascore\n',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 214, 212, 212),
                    ),
                  ),
                  TextSpan(
                    text: '${movie.criticsReview} ',
                    style: const TextStyle(
                        color: Color.fromARGB(197, 94, 191, 97), fontSize: 16),
                  ),
                  const TextSpan(text: 'Critic-reviews')
                ],
              ),
            ),
          ),
        ),
        const SafeArea(
          child: BackButton(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
