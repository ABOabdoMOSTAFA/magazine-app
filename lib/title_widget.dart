import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final TitleData titleData;

  TitleWidget({required this.titleData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: Color(0xFF882dbf),
          child: Text(
            titleData.titleText,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w200),
            textAlign: TextAlign.center,
          )),
    );
  }
}

class TitleData {
  String titleText;

  TitleData({required this.titleText});
}
