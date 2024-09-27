import 'package:flutter/material.dart';

import 'Image_widget.dart';
import 'title_widget.dart';

class FirstScreen extends StatelessWidget {
  final List<ImageData> imageDataList = [];

  // FirstScreen(){
  //   for(int i=0; i<=10; i++){
  //     imageDataList.add(ImageData(imagePath: "assets/images/السيارات.jpg", titleofWidget: "Cars $i"));
  //   }
  // }
  // List<ImageWidget> imageWidget=[];
  FirstScreen() {
    for (int i = 0; i <= 20; i++) {
      imageDataList.add(ImageData(
          imagePath: "assets/images/السيارات.jpg", titleofWidget: "Cars $i"));
      //imageWidget.add(ImageWidget(imageData: ImageData(imagePath: "assets/images/السيارات.jpg", titleofWidget: "Cars $i")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleWidget(titleData: TitleData(titleText: "الاخبار")),
                SizedBox(
                  width: 2,
                ),
                TitleWidget(titleData: TitleData(titleText: "المجلات")),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
                      children: imageDataList
                          .map((imageData) => ImageWidget(imageData: imageData))
                          .toList()
                      // children: imageWidget,
                      )))
        ],
      ),
    );
  }
}
// Widget convertImageDataToWidget(ImageData imageData){
//   return ImageWidget(imageData: imageData);
// }
