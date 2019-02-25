import 'package:flutter/material.dart';

class Avatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        border: Border.all(width: 4,color: Colors.white)
      ),
    );
  }

}