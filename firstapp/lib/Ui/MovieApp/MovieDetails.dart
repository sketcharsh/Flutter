import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final String strMovieName;

  const MovieDetails({Key key, this.strMovieName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(strMovieName),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Text(strMovieName),
      ),
    );
  }
}
