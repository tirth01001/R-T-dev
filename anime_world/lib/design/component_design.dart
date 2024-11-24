


import 'package:anime_world/configuration/widget_conf.dart';
import 'package:flutter/material.dart';

class ComponentDesign {

  ///Display anime like popular anime , trending anime ...etc
  ///it view in small window with size 80 x 110 im..
  ///border radius = 3
  static Widget animeViewContainer({
    String title = "Naruto",
    String description = "Action | Fantastic",
    String assetsImage = "assets/test/image/naruto.jpg",
    Color blurColor = Colors.grey,
    bool useHeroWidget = false,
    String heroTag = "hero",
    void Function() ? onTapAnime ,
    void Function() ? onDoubleTap,
    void Function() ? onLongPress,
  }){

    return IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTapAnime,
            onDoubleTap: onDoubleTap,
            onLongPress: onLongPress,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(3)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2,
                    color: blurColor
                  )
                ]
              ),
              child: useHeroWidget ? Hero(
                tag: heroTag,
                child: SizedBox(
                  width: 80,
                  height: 110,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                    child: Image.asset(assetsImage,fit: BoxFit.cover,)
                  ),
                ),
              ) : SizedBox(
                  width: 80,
                  height: 110,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                   child: Image.asset(assetsImage,fit: BoxFit.cover,)
                  ),
                ),
            ),
          ),
          const SizedBox(height: 7,),
          animeTitle(title),
          animeDescription(description)
        ],
      ),
    );
  }

  

}