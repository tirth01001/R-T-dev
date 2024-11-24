


class CategoryModel {

  List<String> categoryImagesAddress = [];
  List<String> categoryTitle = [];


  CategoryModel.testMode(){
    categoryImagesAddress = [
      "assets/test/image/one_p.jpeg",
      "assets/test/image/solo.jpeg",
    ];
    categoryTitle = [
      "Horror",
      "Action"
    ];
  }

}