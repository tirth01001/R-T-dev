


import 'package:anime_world/configuration/widget_conf.dart';
import 'package:flutter/material.dart';

class SearchAnime extends StatefulWidget {
  const SearchAnime({super.key});

  @override
  State<SearchAnime> createState() => _SearchAnimeState();
}

class _SearchAnimeState extends State<SearchAnime> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "Search ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                )
              ),
              TextSpan(
                text: " Anime" ,
                style: TextStyle(
                  color: darkGreen,
                  fontSize: 20
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}