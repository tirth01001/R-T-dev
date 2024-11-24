



import 'package:flutter/material.dart';




Color darkGreen = const Color(0xFF3ADA5D);
Color lightGreen = const Color(0xFF5DFF81);



///Return Anime Title
///When change this return widget then autometicalluy whole text title changes
Text animeTitle(String title){

  return Text(
    title,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 13
    ),
  );
}

///Return Anime Description
///When change this return widget then autometicalluy whole text title changes
Text animeDescription(String descr){

  return Text(
    descr,
    style: TextStyle(
      color: Colors.white.withOpacity(0.3),
      fontSize: 10
    ),
  );
}



///App Level Title
///When change this return widget then autometicalluy whole text title changes
RichText richTitle(List<String> str,List<TextStyle> style){

  return RichText(
    text: TextSpan(
      children: List.generate(str.length, (index){
        return TextSpan(
          text: str[index],
          style: style[index],
        );
      })
    ),
  );
}