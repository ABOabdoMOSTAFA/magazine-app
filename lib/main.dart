import 'package:flutter/material.dart';

import 'first_screen.dart';

void main() {
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First task",
      home: FirstScreen(),
    );
  }
}
