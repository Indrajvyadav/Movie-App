import 'package:example2_app/details_page/rating_box.dart';
import 'package:example2_app/model/movie_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(72, 75, 71, 71),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
              child: RatingBox(movie: movie),
            ),
          ],
        ),
      ),
    );
  }
}
