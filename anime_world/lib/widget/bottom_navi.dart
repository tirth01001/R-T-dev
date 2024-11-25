

import 'package:anime_world/configuration/widget_conf.dart';
import 'package:anime_world/main.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {


  final void Function() onTapDownload;
  final void Function() onTapSearch;
  final void Function() onTapHome;
  final void Function() onTapFavorite;
  final void Function() onTapProfile;

  const BottomNavigation({
    super.key,
    required this.onTapDownload,
    required this.onTapFavorite,
    required this.onTapHome,
    required this.onTapProfile,
    required this.onTapSearch,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  double fixHeight = 50;

  int activeIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          
          width: maxWidthdp,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                  
              ///Download Icon User can watch Offline Anime
              IconButton(onPressed: widget.onTapDownload, icon: Icon(
                Icons.download,
                color: lightGreen,
              )),
                  
                  
              ///Search Icons
              Positioned(
                child: IconButton(onPressed: widget.onTapSearch, icon: Icon(
                  Icons.search,
                  color: lightGreen,
                ),),
              ),
                  
                  
              // SvgPicture.asset("assets/res/svg/bottom_nav/home_icon_2.svg",width: 20,height: 20,),
                  
              ///Temp Icons
              insideCircle(
                child: IconButton(onPressed: widget.onTapHome, icon: Icon(Icons.assignment_ind,color: lightGreen,)),
                margin: const EdgeInsets.only(
                  bottom:0
                )
              ),
                  
                  
              ///Favorite
              IconButton(onPressed: widget.onTapFavorite, icon: Icon(
                Icons.favorite,
                color: lightGreen,
              )),
                  
              ///Profile
              IconButton(onPressed: widget.onTapProfile, icon: Icon(Icons.supervised_user_circle,color: lightGreen,))
                  
            ],
          ),
        ),
      ],
    );
  }
}



Widget insideCircle({
  Widget ? child,
  EdgeInsets ? margin
}){

  return Container(
    margin: margin,
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      color: darkGreen,
      borderRadius: const BorderRadius.all(Radius.circular(100))
    ),
    child: child ?? const SizedBox(),
  );
}


