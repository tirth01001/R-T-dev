


import 'package:anime_world/configuration/widget_conf.dart';
import 'package:flutter/material.dart';

class DownloadAnime extends StatefulWidget {
  const DownloadAnime({super.key});

  @override
  State<DownloadAnime> createState() => _DownloadAnimeState();
}

class _DownloadAnimeState extends State<DownloadAnime> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "Downloaded ",
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