import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final ImageData imageData;

  ImageWidget({required this.imageData});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(
          imageData.imagePath,
          // width: 196,
          // height: 100,
          // fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 34),
          color: Color(0x90882dbf),
          child: Text(
            imageData.titleofWidget,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        )
      ],
    );
  }
}

class ImageData {
  String imagePath;
  String titleofWidget;

  ImageData({required this.imagePath, required this.titleofWidget});
}
