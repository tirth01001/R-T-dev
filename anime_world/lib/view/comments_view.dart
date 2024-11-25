

import 'package:anime_world/configuration/widget_conf.dart';
import 'package:anime_world/design/button_design.dart';
import 'package:flutter/material.dart';

class CommentsView extends StatefulWidget {
  const CommentsView({super.key});

  @override
  State<CommentsView> createState() => _CommentsViewState();
}

class _CommentsViewState extends State<CommentsView> {

  final TextEditingController _comment = TextEditingController();

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
              ///This block Input Titlte of Rating
              ///Block Start
              Expanded(
                child: TextField(
                  controller: _comment,
                  cursorColor: darkGreen,
                  maxLines: 1,
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
              ),
              ///Block End
              const SizedBox(width: 10,),
              ButtonDesign.button(
                title: "Add",
                onTap: (){}
              )
            ],
          ),
          const SizedBox(height: 10,),

          
          

        ],
      ),
    );
  }
}