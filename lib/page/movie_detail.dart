import 'package:flutter/material.dart';
import 'package:mobile_week9/model/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';

  MovieDetail(this.movie);

  @override
  Widget build(BuildContext context) {
    String path;
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath;
    } else {
      path =
          'https://images.freeimages.com/images/large-previewsfleb/movie-clapboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.originalTitle),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: height / 1.5,
                child: Image.network(path),
              ),
               Container(
                  child: Text("Rating : " + movie.voteAverage.toString()),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  )),
              Container(
                  child: Text(movie.overview),
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
              )),
            ],
          ),
        ),
      ),
    );
  }
}