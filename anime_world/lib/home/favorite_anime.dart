


import 'package:anime_world/configuration/widget_conf.dart';
import 'package:flutter/material.dart';

class FavoriteAnime extends StatefulWidget {
  const FavoriteAnime({super.key});

  @override
  State<FavoriteAnime> createState() => _FavoriteAnimeState();
}

class _FavoriteAnimeState extends State<FavoriteAnime> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "Favorite ",
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