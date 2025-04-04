import 'package:flutter/material.dart';

class SpacerBox extends StatelessWidget {
  final double width;
  final double height;

  const SpacerBox({this.width = 0.0, this.height = 0.0, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
