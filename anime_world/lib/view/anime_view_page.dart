



import 'package:anime_world/configuration/widget_conf.dart';
import 'package:anime_world/database/cloude_db.dart';
import 'package:anime_world/main.dart';
import 'package:anime_world/view/comments_view.dart';
import 'package:anime_world/view/rating_view.dart';
import 'package:anime_world/view/session_view.dart';
import 'package:anime_world/widget/anime_page_buttons.dart';
import 'package:flutter/material.dart';

class AnimeViewPage extends StatefulWidget {

  final String heroTag;
  final bool useHeroAnime;
  final String imageAddress;

  const AnimeViewPage({
    super.key,
    this.heroTag = "",
    this.useHeroAnime = false,
    this.imageAddress = "",
  });

  @override
  State<AnimeViewPage> createState() => _AnimeViewPageState();
}

class _AnimeViewPageState extends State<AnimeViewPage> {

  int toolNavaigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Stack(
            children: [
              widget.useHeroAnime ? 
                Hero(
                  tag: widget.heroTag,
                  child: Container(
                    width: maxWidthdp,
                    height: 160,
                    child: Image.asset(widget.imageAddress,fit: BoxFit.cover,),
                  ),
                )
              : Container(
                width: maxWidthdp,
                height: 160,
                child: Image.asset(widget.imageAddress,fit: BoxFit.cover,),
              ),

              ///This is Back Button Icon Block To Navigate Back
              ///Block Start
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: darkGreen,
                    borderRadius: const BorderRadius.all(Radius.circular(200))
                  ),
                  child: Icon(Icons.navigate_before,color: lightGreen,),
                ),
              ),
              ///Block End
            ],
          ),

          const SizedBox(height: 30,),
          
          ///Title of Anime Page And Favortite Icond
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Naruto",style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: lightGreen,))
            ],
          ),

          const Text("Action | Fantastic ",style: TextStyle(
            fontSize: 14,
            color: Colors.grey
          ),),

          const SizedBox(height: 7,),

          const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",style: TextStyle(
            fontSize: 14,
            color: Colors.grey
          ),),

          const SizedBox(height: 8,),


          ///Rating , Like , Comments All buttons in this block
          ///Block Start
          AnimePageIntractButtons(
            onTapCommentButton: (){
              setState(() {
                toolNavaigationIndex = 3;
              });
            },
            onTapLikeButton: () async {
              await readData();
            },
            onTapRatingButton: (){
              setState(() {
                toolNavaigationIndex = 1;
              });
            },
            onTapSessionButton: (){
              setState(() {
                toolNavaigationIndex = 0;
              });
            },
          ),
          ///Block End
          
          const Divider(endIndent: 20,indent: 20,color: Colors.grey,),

          toolNavaigationIndex == 0 ? const SessionView() : toolNavaigationIndex == 1 ? const RatingView() : const CommentsView(),


        ],
      )
    );
  }
}