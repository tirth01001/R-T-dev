



import 'package:anime_world/configuration/widget_conf.dart';
import 'package:flutter/material.dart';

class AnimePageIntractButtons extends StatefulWidget {

  final void Function() onTapRatingButton;
  final void Function() onTapLikeButton;
  final void Function() onTapCommentButton;
  final void Function() onTapSessionButton;

  const AnimePageIntractButtons({
    super.key,
    required this.onTapCommentButton,
    required this.onTapLikeButton,
    required this.onTapRatingButton,
    required this.onTapSessionButton,
  });

  @override
  State<AnimePageIntractButtons> createState() => _AnimePageButtonsState();
}

class _AnimePageButtonsState extends State<AnimePageIntractButtons> with SingleTickerProviderStateMixin {
  
  int activeIndex = 3;

  late Animation _animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0,end: 50).animate(_controller);
    _controller.addListener((){
      setState(() {
        
      });
    });
    _controller.forward();
  }


  void startForwardingAnimation(int activeIndex){
    this.activeIndex = activeIndex;
    if(_controller.isCompleted){
      _controller.reverse();
    }else{
      _controller.forward();
    }
    
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        IntrinsicHeight(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                  bottom: 5,
                  top: 5,
                ),
                child: InkWell(
                  onTap: (){
                    activeIndex = 3;
                    widget.onTapSessionButton();
                    setState(() {
                      _controller.forward(from: 0);
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: Ink(
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 8,
                        bottom: 3,
                        top: 3,
                      ),
                      decoration: BoxDecoration(
                        color: darkGreen.withOpacity(.6),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.tv,color: lightGreen,),
                          const SizedBox(width: 4,),
                          const Text("6 S",style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              activeIndex == 3 ? lineOnBottomButton(
                widget: _animation.value,
              ) : const SizedBox(),
            ],
          ),
        ),


        IntrinsicHeight(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                  bottom: 5,
                  top: 5,
                ),
                child: InkWell(
                  onTap: (){
                    activeIndex = 0;
                    widget.onTapRatingButton();
                    setState(() {
                      _controller.forward(from: 0);
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: Ink(
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 8,
                        bottom: 3,
                        top: 3,
                      ),
                      decoration: BoxDecoration(
                        color: darkGreen.withOpacity(.6),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star,color: lightGreen,),
                          const SizedBox(width: 4,),
                          const Text("4.5",style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              activeIndex == 0 ? lineOnBottomButton(
                widget: _animation.value,
              ) : const SizedBox(),
            ],
          ),
        ),



        IntrinsicHeight(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                  bottom: 5,
                  top: 5,
                ),
                child: InkWell(
                  onTap: (){
                    // startForwardingAnimation(1);
                    activeIndex = 1;
                    widget.onTapLikeButton();
                    setState(() {
                      _controller.forward(from: 0);
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: Ink(
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 8,
                        bottom: 3,
                        top: 3,
                      ),
                      decoration: BoxDecoration(
                        color: darkGreen.withOpacity(.6),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.favorite,color: lightGreen,),
                          const SizedBox(width: 4,),
                          const Text("44",style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              activeIndex == 1 ? lineOnBottomButton(
                widget: _animation.value
              ) : const SizedBox(),
            ],
          ),
        ),





        IntrinsicHeight(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                  bottom: 5,
                  top: 5,
                ),
                child: InkWell(
                  onTap: (){
                    widget.onTapCommentButton();
                    setState(() {
                      activeIndex = 2;
                      _controller.forward(from: 0);
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: Ink(
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 8,
                        bottom: 3,
                        top: 3,
                      ),
                      decoration: BoxDecoration(
                        color: darkGreen.withOpacity(.6),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.comment,color: lightGreen,),
                          const SizedBox(width: 4,),
                          const Text("45k",style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 0,),
              activeIndex == 2 ? lineOnBottomButton(
                widget: _animation.value
              ) : const SizedBox(),
            ],
          ),
        ),



      ],
    );
  }
}



Container lineOnBottomButton({
  double widget = 50,
  double height = 4,
}) {

  return Container(
    width: widget,
    height: height,
    decoration: BoxDecoration(
      color: darkGreen,
      borderRadius: const BorderRadius.all(Radius.circular(8))
    ),
  );
}