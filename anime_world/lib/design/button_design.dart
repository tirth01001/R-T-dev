

import 'package:anime_world/configuration/widget_conf.dart';
import 'package:flutter/material.dart';

class ButtonDesign {

  static Widget sessionButton({
    String title = "session 1",
    bool selected = false,
    EdgeInsets ? margin,
    void Function() ? onTap,
  }){

    return Container(
      margin: margin,
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Ink(
          child: Container(
            padding: const EdgeInsets.only(
              left: 6,
              right: 6,
              top: 5,
              bottom: 5
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: selected ? darkGreen.withOpacity(.4) : Colors.grey.withOpacity(.3)
            ),
            child: Text(title,style: TextStyle(
              fontSize: 16,
              color: selected ? lightGreen : Colors.white,
            ),),
          ),
        ),
      ),
    );
  }


  static Widget button({
    String title = "button",
    void Function() ? onTap,
    EdgeInsets ? margin,
  }){

    return Container(
      margin: margin,
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Ink(
          decoration: BoxDecoration(
            color: darkGreen.withOpacity(.4),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
              bottom: 3,
              top: 3
            ),
            child: Center(
              child: Text(title,style: TextStyle(
                fontSize: 16,
                color: lightGreen
              ),),
            ),
          ),
        ),
      ),
    );
  }

}