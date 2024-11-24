


import 'package:anime_world/configuration/widget_conf.dart';
import 'package:anime_world/design/component_design.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ///This function handle menu when user click on : then show men
  ///Whole menu logic write here
  void handleMenu(){

  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "Anime ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                )
              ),
              TextSpan(
                text: " World" ,
                style: TextStyle(
                  color: darkGreen,
                  fontSize: 20
                ),
              )
            ]
          ),
        ),
        actions: [
          IconButton(onPressed: handleMenu, icon: const Icon(Icons.more_vert_outlined,color: Colors.white,))
        ],
      ),
      body: Center(child: ComponentDesign.animeViewContainer()),
    );
  }
}