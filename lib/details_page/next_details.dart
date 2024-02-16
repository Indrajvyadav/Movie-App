import 'package:example2_app/details_page/movie_titlebar.dart';
import 'package:example2_app/model/movie_model.dart';
import 'package:flutter/material.dart';

class NextDetails extends StatelessWidget {
  const NextDetails({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 310,
      child: Container(
        height: size.height * 0.65,
        width: size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(146, 232, 219, 102).withOpacity(0.2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: MovieTitleBar(movie: movie),
      ),
    );
  }
}
