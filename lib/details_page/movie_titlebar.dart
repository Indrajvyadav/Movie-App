import 'package:example2_app/model/movie_model.dart';
import 'package:flutter/material.dart';

class MovieTitleBar extends StatelessWidget {
  const MovieTitleBar({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 55,
          left: 20,
          child: SizedBox(
            height: 70,
            width: 250,
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                    color: Color.fromARGB(255, 214, 212, 212),
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: '${movie.title}\n',
                    style: const TextStyle(
                        fontSize: 30, color: Color.fromARGB(176, 218, 197, 4)),
                  ),
                  TextSpan(text: '           ${movie.year}'),
                  TextSpan(
                    text: '     \t\t${movie.timelength}',
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 320,
          child: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(202, 169, 130, 1),
            onPressed: () {},
            child: const Icon(Icons.add,
                color: Color.fromARGB(255, 75, 71, 71), size: 35),
          ),
        ),
        Positioned(
          top: 120,
          child: Container(
            height: 1,
            width: size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 164, 155, 68),
            ),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: ListView.builder(
                itemCount: movie.genre.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildGenra(index, context),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 160,
          left: 20,
          child: Text(
            'Plot Summary :',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(176, 218, 197, 4),
            ),
          ),
        ),
        Positioned(
          top: 200,
          child: Container(
            width: size.width,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              movie.plot,
              maxLines: 7,
              style: const TextStyle(
                  color: Color.fromARGB(255, 214, 212, 212), fontSize: 18),
            ),
          ),
        ),
        const Positioned(
          top: 350,
          left: 20,
          child: Text(
            'Cast & Crew :',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(176, 218, 197, 4),
            ),
          ),
        ),
        Container(
          child: ListView.builder(
              itemCount: movie.cast.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CastBuild(
                    cast: movie.cast[index],
                  )),
        )
      ],
    );
  }

  Padding buildGenra(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 130),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 25,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(118, 158, 158, 158),
              ),
              child: Text(
                movie.genre[index],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CastBuild extends StatelessWidget {
  const CastBuild({super.key, required this.cast});
  final Map cast;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 400, left: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(97, 0, 0, 0),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      cast['image'],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '\n${cast['originalName']}\n\n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    TextSpan(
                        text: cast['movieName'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
