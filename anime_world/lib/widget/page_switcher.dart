

import 'package:anime_world/configuration/widget_conf.dart';
import 'package:anime_world/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageSwitcher extends StatefulWidget {

  final List<String> pages;
  final int currantPage;

  const PageSwitcher({
    super.key,
    required this.pages,
    this.currantPage = 0,
  });

  @override
  State<PageSwitcher> createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> with SingleTickerProviderStateMixin {

  late int currantPage = widget.currantPage;

  double wid = maxWidthdp,hei = maxHeightdp;

  // ignore: unused_field
  late Animation _animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration:   const Duration(microseconds: 200));
    _animation = Tween<double>(begin: 1,end: 8).animate(_controller);
    
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: IntrinsicHeight(
        child: Column(
          children: [
            
            animePageView(
              width: wid,
              height: 171,
              imageAddress: widget.pages[currantPage],
            ),


            const SizedBox(height: 10,),
            ///This Row show Image Dots . . . when page change
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.pages.length, (index){
                if(index == currantPage){
                  
                  return Container(
                    width: 14,
                    height: 14,
                    margin: const EdgeInsets.only(bottom: 10,right: 10,left: 10),
                    decoration: BoxDecoration(
                      color: darkGreen,
                      borderRadius: const BorderRadius.all(Radius.circular(200))
                    ),
                  );

                }else{
                  return Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(200))
                    ),
                  );
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}


///This function used for page Switcher 
///This function contain a container inside image only
Widget animePageView({
  required double width ,
  required double height ,
  String imageAddress = "assets/test/image/naruto.jpg",
  bool isNetworkImage = false,
  bool isSvgImage = false,
  Matrix4 ? transform,
}){

  return AnimatedContainer(
    transform: transform,
    
    duration: const Duration(seconds: 2),
    width: width,
    height: height,
    margin: const EdgeInsets.only(
      left: 20,
      right: 20,
      top: 30
    ),
    // decoration: BoxDecoration(
    //   boxShadow: [
    //     BoxShadow(
    //       blurRadius: 20,
    //       spreadRadius: 1,
    //       color: darkGreen
    //     )
    //   ]
    // ),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: isNetworkImage ? Image.network(imageAddress) : isSvgImage ? SvgPicture.asset(imageAddress) : Image.asset(imageAddress,fit: BoxFit.cover,),
    ),
  );
}
  