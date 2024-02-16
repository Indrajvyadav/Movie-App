import 'package:flutter/material.dart';

class Genres extends StatelessWidget {
  final List<String> genreList = [
    '   Action',
    '  Comedy',
    '  Thriller',
    '  Crime',
    '   Drama',
  ];
  Genres({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: genreList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => genreCategory(index, context),
      ),
    );
  }

  Padding genreCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 190, left: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 35,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: Colors.grey),
              child: Text(
                genreList[index],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
