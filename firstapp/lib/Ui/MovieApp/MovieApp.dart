import 'package:firstapp/Ui/MovieApp/MovieDetails.dart';
import 'package:flutter/material.dart';

class MoviesApp extends StatefulWidget {
  @override
  _MoviesAppState createState() => _MoviesAppState();
}

class _MoviesAppState extends State<MoviesApp> {
  final listMovies = [
    "The Seven Samurai",
    "Bonnie and Clyde",
    "Reservoir Dogs",
    "Wolf Of Wall Street",
    "Doctor Zhivago",
    "The Deer Hunter",
    "Rocky",
    "Memento",
    "Braveheart",
    "Slumdog Millionaire",
    "Beauty and the Beast",
    "Inception",
    "Seven"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple.shade100,
      body: ListView.builder(
          itemCount: listMovies.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 2,
              color: Colors.white,
              child: ListTile(
                  title: Text(listMovies[index]),
                  subtitle: Text("Top movies"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.9),
                      ),
                      child: Text(
                        listMovies[index].characters.first,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MovieDetails(strMovieName: listMovies[index])));
                  }
                  //onTap: () => debugPrint(listMovies[index]),
                  ),
            );
          }),
    );
  }
}
