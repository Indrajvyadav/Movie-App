import 'package:example2_app/home_page/type2_category.dart';
import 'package:example2_app/model/movie_model.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class MovieCarousal extends StatefulWidget {
  const MovieCarousal({super.key});

  @override
  State<MovieCarousal> createState() => _MovieCarousalState();
}

class _MovieCarousalState extends State<MovieCarousal> {
  late PageController _pageController;
  int initialPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController =
        PageController(viewportFraction: 0.85, initialPage: initialPage);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 250, left: 15),
        child: AspectRatio(
          aspectRatio: 0.65,
          child: PageView.builder(
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            itemCount: movies.length,
            itemBuilder: (context, index) => buildMovieSlider(index),
          ),
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0;
        if (_pageController.position.haveDimensions) {
          value = index - _pageController.page!.toDouble();
          value = (value * 0.038).clamp(-1, 1);
        }
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 250),
          opacity: index == initialPage ? 1 : 1,
          child: Transform.rotate(
            angle: math.pi * value,
            child: Type2Category(
              index: index,
            ),
          ),
        );
      },
    );
  }
}
