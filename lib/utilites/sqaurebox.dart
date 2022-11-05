import 'package:flutter/material.dart';
import 'package:olyinfo/constant.dart';

class SquareBox extends StatelessWidget {
  final title;
  final subtitle;

  const SquareBox({Key? key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: shadowColors,
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(3, 3))
            ]),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),
            ),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
