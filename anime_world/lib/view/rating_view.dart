

import 'package:anime_world/configuration/widget_conf.dart';
import 'package:anime_world/design/button_design.dart';
import 'package:flutter/material.dart';

class RatingView extends StatefulWidget {
  const RatingView({super.key});

  @override
  State<RatingView> createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {

  final TextEditingController _ratingTitle = TextEditingController();
  final TextEditingController _ratingDescr = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          const SizedBox(height: 10,),

          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.4),
                  borderRadius: const BorderRadius.all(Radius.circular(300))
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset("assets/test/image/goku.png",fit: BoxFit.cover,)
                ),
              ),
              const SizedBox(width: 10),
              IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: lightGreen,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: lightGreen,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: lightGreen,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: lightGreen,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: lightGreen,)),
              Expanded(child: Container()),
              ButtonDesign.button(
                title: "Add",
                onTap: (){}
              )
            ],
          ),
          const SizedBox(height: 10,),

          ///This block Input Titlte of Rating
          ///Block Start
          TextField(
            controller: _ratingTitle,
            cursorColor: darkGreen,
            style: const TextStyle(
              color: Colors.white
            ),
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              hintText: "Enter Title",
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(.7)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: darkGreen)
              ),
              fillColor: Colors.grey.withOpacity(.4),
              filled: true
            ),
          ),
          ///Block End
          
          const SizedBox(height: 10,),
          
          ///This Block Input Rating Description
          ///Block Start
          TextField(
            controller: _ratingDescr,
            cursorColor: darkGreen,
            maxLines: 3,
            style: const TextStyle(
              color: Colors.white
            ),
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              hintText: "Enter Description",
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(.7)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: darkGreen)
              ),
              fillColor: Colors.grey.withOpacity(.4),
              filled: true
            ),
          ),
          ///Blcok End
          

        ],
      ),
    );
  }
}