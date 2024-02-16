import 'package:example2_app/home_page/movie_carousel.dart';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:example2_app/home_page/genre_page.dart';
import 'package:example2_app/home_page/type_category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'example-2',
      theme: ThemeData(
        fontFamily: "RobotoCondensed",
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: Color.fromARGB(255, 214, 212, 212),
            ),
            labelMedium: TextStyle(color: Colors.white)),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      floatingActionButton: Container(
        height: 60,
        width: 60,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(146, 232, 219, 102),
          ),
          child: Container(
            child: SvgPicture.asset(
              'assets/images/Plus.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              height: 50,
              width: 50,
            ),
          ),
        ),
      ),

      backgroundColor: const Color.fromARGB(162, 75, 71, 71),
      // ignore: sized_box_for_whitespace
      body: Stack(
        children: [
          Positioned(
            top: 48,
            left: 20,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              child: SvgPicture.asset(
                'assets/images/options.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                height: 35,
                width: 35,
              ),
            ),
          ),
          Positioned(
            top: 48,
            right: 20,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              child: SvgPicture.asset(
                'assets/images/search.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                height: 35,
                width: 35,
              ),
            ),
          ),
          Genres(),
          const TypeCategory(),
          const MovieCarousal(),
        ],
      ),
    );
  }
}
