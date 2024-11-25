


import 'package:anime_world/configuration/widget_conf.dart';
import 'package:anime_world/main.dart';
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

    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: IntrinsicHeight(
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
      ),
    );
  }



  static Widget categoryView({
    double width = 100,
    double height = 70,
    String title = "Category",
    String image = "assets/test/image/naruto.jpg",
    EdgeInsets ? margin
  }){

    return Padding(
      padding: margin ?? const EdgeInsets.only(),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width,
              height: height,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset(image,fit: BoxFit.cover,),
              ),
            ),
            Text(title,style: const TextStyle(
              color: Colors.white,
              fontSize: 13
            ),)
          ],
        ),
      ),
    );
  }


  static Widget episodeViewContainer({
    String epName = "Naruto",
    int epNumber = 1,
    String epImage = "assets/test/image/naruto.jpg",
    String epDescription = "This is a description of the episode.",
    String epTime = "28:45",
    EdgeInsets ? margin,
    void Function() ? onTap,
  }){

    return Container(
      margin: margin,
      width: maxWidthdp,
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Expanded(
              child: SizedBox(
                height: 100,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(epImage,fit: BoxFit.cover,),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Episode No. $epNumber",style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white
                ),),
                const SizedBox(height: 10,),
                Text(epName,style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.withOpacity(.4),
                ),),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                    borderRadius: const BorderRadius.all(Radius.circular(8))
                  ),
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                    bottom: 3,
                    top: 3
                  ),
                  child: Text(epTime,style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          IconButton(onPressed: (){}, icon: Icon(Icons.download,color: lightGreen,))
        ],
      ),
    );
  }  

}