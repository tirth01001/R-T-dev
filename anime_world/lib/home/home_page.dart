


import 'package:anime_world/configuration/widget_conf.dart';
import 'package:anime_world/design/component_design.dart';
import 'package:anime_world/model/global_model.dart';
import 'package:anime_world/widget/page_switcher.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ///This function handle menu when user click on : then show men
  ///Whole menu logic write here
  void handleMenu(){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "Anime ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                )
              ),
              TextSpan(
                text: " World" ,
                style: TextStyle(
                  color: darkGreen,
                  fontSize: 20
                ),
              )
            ]
          ),
        ),
        actions: [
          IconButton(onPressed: handleMenu, icon: const Icon(Icons.more_vert_outlined,color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageSwitcher(pages: ["assets/test/image/naruto.jpg"]),
        
            ///Title of Popular Anime title
            Container(
              margin: const EdgeInsets.only(left: 20,top: 40),
              child: richTitle(["Popular " , "Anime"], [
                const TextStyle(
                  fontSize: 17,
                  color: Colors.white
                ),
                TextStyle(
                  fontSize: 17,
                  color: darkGreen
                )
              ]),
            ),
        
            ///This Block Show The Row List of Popular Anime
            ///This is not connect to any server or Class
            ///This is test mode with test images
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 40),
                child: Row(
                  children: List.generate(10, (index){
                    return ComponentDesign.animeViewContainer();
                  }),
                ),
              ),
            ),
            ///Block End
        
            const SizedBox(height: 40,),
        
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Category",style: TextStyle(
                fontSize: 17,
                color: Colors.white
              ),),
            ),
        
        
            ///This block show category List form Category Model [category_model.dart]
            ///global model containt that global object of category [global_model.dart]
            ///this block use as test mode is not connect with any server
            ///Block Start
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 40),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(categoryModel.categoryImagesAddress.length, (index){
                
                    return ComponentDesign.categoryView(
                      title: categoryModel.categoryTitle[index],
                      image: categoryModel.categoryImagesAddress[index],
                      margin: const EdgeInsets.only(left: 10,right: 10)
                    );
                
                  }),
                ),
              ),
            )
            ///Block End
            
            
        
          ],
        ),
      ),
    );
  }
}