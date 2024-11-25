


import 'package:anime_world/configuration/widget_conf.dart';
import 'package:anime_world/design/button_design.dart';
import 'package:anime_world/design/component_design.dart';
import 'package:flutter/material.dart';

class SessionView extends StatefulWidget {

  // final List<String> sessionList = [];

  const SessionView({super.key});

  @override
  State<SessionView> createState() => _SessionViewState();
}

class _SessionViewState extends State<SessionView> {

  int selectSessionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){

              }, icon: Icon(Icons.filter_alt_rounded,color: lightGreen,)),
              Text('view all',style: TextStyle(fontSize: 18,color: lightGreen),)
            ],
          ),
          const SizedBox(height: 10,),
          

          ///This Block Show Session List 
          ///Session 1 .. Session 2 ... Session N
          ///Block Start
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index){

                  

                  return ButtonDesign.sessionButton(
                    title: "session $index",
                    selected:  index == selectSessionIndex,
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10
                    ),
                    onTap: (){
                      setState(() {
                        selectSessionIndex = index;
                      });
                    }
                  );
                }),
              ),
            ),
          ),
          ///Block End
          const SizedBox(height: 30,),
          ComponentDesign.episodeViewContainer(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20
            )
          ),

        ],
      ),
    );
  }
}