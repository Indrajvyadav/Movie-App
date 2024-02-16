class Movie {
  // Accessing Data

  Movie(
      {required this.id,
      required this.year,
      required this.numOfRatings,
      required this.criticsReview,
      required this.metascoreRatings,
      required this.rating,
      required this.genre,
      required this.plot,
      required this.title,
      required this.poster,
      required this.backdrop,
      required this.cast,
      required this.timelength});

  // Storing Data

  final int id, year, numOfRatings, criticsReview, metascoreRatings;
  double rating;
  List<String> genre;
  String plot, title, poster, backdrop, timelength;
  List<Map> cast;
}

//Dummy data- Using Data

List<Movie> movies = [
  Movie(
    id: 100,
    title: 'Thalapathi',
    year: 1991,
    poster: 'assets/images/thalapathi_post.jpg',
    backdrop: 'assets/images/thalapathi2_back.jpeg',
    rating: 8.5,
    numOfRatings: 13000,
    genre: [
      'Action',
      'Crime',
      'Drama',
    ],
    timelength: '2h 37m',
    metascoreRatings: 80,
    criticsReview: 44,
    plot:
        'Surya (Rajnikanth) is an orphan raised in a slum. He finds a friend in the local Godfather (Mamooty). They rule the town and forms a parallel government.',
    cast: [
      {
        'originalName': 'Rajinikanth',
        'movieName': 'Surya',
        'image': 'assets/images/rajinik.jpg',
      },
      {
        'originalName': 'Mammootty',
        'movieName': 'Devaraj',
        'image': 'assets/images/mamoo.jpg',
      },
      {
        'originalName': 'Shobana',
        'movieName': 'Subbulaxmi',
        'image': 'assets/images/shob.jpg',
      },
      {
        'originalName': 'Arvind Swami',
        'movieName': 'Arjun',
        'image': 'assets/images/aravind.jpg',
      }
    ],
  ),
  Movie(
    id: 101,
    title: 'Sivaji: The Boss',
    year: 2007,
    poster: 'assets/images/sivaji2_post.jpg',
    backdrop: 'assets/images/sivaji_back.jpg',
    rating: 7.5,
    numOfRatings: 21000,
    genre: ['Action', 'Crime', 'Drama'],
    metascoreRatings: 82,
    timelength: '3h 5m',
    criticsReview: 59,
    plot:
        'A software engineer comes to India in order to serve the nation and invest in its welfare. A few corrupt officials and politicians try to stop him while he tries to do good for the poor.',
    cast: [
      {
        'originalName': 'Rajinikanth',
        'movieName': 'Sivaji Arumugam',
        'image': 'assets/images/rajinik.jpg',
      },
      {
        'originalName': 'Vivek',
        'movieName': 'Arivu Mama',
        'image': 'assets/images/vivek.jpg',
      },
      {
        'originalName': 'Shriya Saran',
        'movieName': 'Tamizhselvi',
        'image': 'assets/images/shreya.jpg',
      },
      {
        'originalName': 'Suman',
        'movieName': 'Adisheshan',
        'image': 'assets/images/suman.jpg',
      }
    ],
  ),
  Movie(
    id: 102,
    title: '    Jailer',
    year: 2023,
    poster: 'assets/images/jailer2_post.jpg',
    backdrop: 'assets/images/jailer_back.jpg',
    rating: 7.1,
    numOfRatings: 32000,
    genre: ['Action', 'Crime', 'Comedy'],
    metascoreRatings: 66,
    criticsReview: 218,
    timelength: '2h 48m',
    plot:
        'Muthuvel Pandian is a retired jailer.The story is about how Muthuvel Pandian goes toe to toe against Varma, the mastermind behind large-scale smuggling of temple idols and treasures, and avenges his son.',
    cast: [
      {
        'originalName': 'Rajinikanth',
        'movieName': '	Muthuvel Pandian',
        'image': 'assets/images/rajinik.jpg',
      },
      {
        'originalName': 'Mohanlal',
        'movieName': 'Mathew',
        'image': 'assets/images/mohanlal.jpg',
      },
      {
        'originalName': 'Shivarajkumar',
        'movieName': 'Narasimha',
        'image': 'assets/images/shiv-1.jpg',
      },
      {
        'originalName': 'Ramya Krishnan',
        'movieName': '	Vijaya',
        'image': 'assets/images/ramya.jpg',
      },
    ],
  ),
];
